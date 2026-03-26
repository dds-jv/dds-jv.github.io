---
layout: page
title: Clase 15
description: Viernes (Noche, 2026)
permalink: /bitacoras/2026/viernes-n/clase-15/
---


## Temario

En esta clase los conceptos de arquitectura Web y sus protocolos. Para ello, y teniendo en cuenta que algunos de estos temas ya han sido dados en la materia de Desarrollo de Software, dejamos un video de repaso que cubre los temas de:

 1. La web y su historia
 2. Las arquitecturas cliente-servidor
 3. El protocolo HTTP
 4. El patrón MVC

Luego, profundizamos en la distinción entre cliente pesado y cliente liviano, el protocolo HTTP y las convenciones REST.

Por último, presentamos [Javalin](https://javalin.io/), un framework muy liviano para exponer nuestra aplicación via HTTP, y daremos un ejemplo de exposición de un API REST JSON y de una aplicación HTML.

## Resumen

### Primera parte: modelado REST

Esta primera parte está guiada por el ejercicio de QMP7.

> Como usuarie de QueMePongo quiero ver todas las prendas que tengo en mi guardarropas desde el navegador para poder administrarlas.

Algunas opciones:

```bash
GET http://localhost:5000/api/[controller]/guardarropa
GET http://www.quemepongo.com/guardarropas/{id}/prendas
GET http://www.quemepongo.com/guardarropas/prendas
GET /quemepongo/{id_usuario}/guardarropas
```

> **Corolario 1**: Cuidado, la URL/URI tiene que estar bien formada URI:
>
> ```
>  protocolo://dominio[:puerto][/ruta]
>  http://ddsjv.com:8080/algo
> ```

Otras opciones:

```bash
GET /api/[controller]/guardarropa
GET /guardarropas/{id}/prendas
GET /guardarropas/prendas
GET /quemepongo/{id_usuario}/guardarropas
```

> **Corolario 2**: No nos va a importar ni el dominio, ni el puerto ni el protocolo
> para la comunicación de estar rutas

Veamos ahora la siguiente opción:

```bash
GET /api/[controller]/guardarropa # OJO, esto es una cuestión
                                  # de implementación
                                  # (además de que no sigue
                                  # ningún formato HTTP válido)
```


> **Corolario 3**: Sólo nos vamos a concentrar en los problema de interfaz, no de implementación
> y vamos a respetar la estructura de HTTP y sus URLs

¿Y qué tal esta opción?

```bash
GET /quemepongo/{id_usuario}/guardarropas # OJO, vamos a evitar
                                         # colocar el nombre de
                                         # la aplicación en la ruta,
                                         # porque es **redundante**
```

> **Corolario 4**: No vamos a incluir el nombre del sistema como parte de la ruta

```bash
GET /api/guardarropa # OJO, vamos a tener cuidado con utilizar prefijos como /api,
                     # **en principio** vamos a evitarlo
                     # Y en parciales NO lo usen y listo 😼
```

> **Corolario 5**: Toda interfaz REST **ES** un API, independientemente de qué devuelva
> (de qué tipo de contenido, content-type en inglés), así que el `/api` es redundante

Si asumimos que tenemos un sólo guardarropas:

```bash
GET /guardarropas/prendas #  OJO, es redundante, porque el
                          # guardarropas ya es una colección de prendas
```

> **Corolario 6**: vamos a evitar anidamientos innecesarios, que no aporten desde el punto de vista de la navegación
> (direccionamiento) de los recursos


```bash
GET /usuarios/{id}/prendas # OJO, no vamos a agregar información de sesión
                          # (es decir, que quién / en que
                          # contexto se está usando nuestra ruta)
                          # porque vamos a informarla utilizando
                          # otras herramientas:
                          #
                          # * Cabeceras (Basic Auth)
                          # * Cookies
                          # * Otras
```

¿Y por qué?

  - Porque es más limpio (hay que ingresar menos información en la ruta)
  - Porque es más seguro (porque no hay riesgo de que ingrese información de otre usuarie)
    No es que el manejo de sesión esté libre de hacks, pero eso es para otra materia :P
  - Porque es más fácil "espiar" por parte del servidor

> **Corolario 7**: vamos a evitar expresar ideas de sesión (como por ejemplo id de usuario que está usando el sistema) como parte de la ruta

Mejores opciones son:

```bash
GET /guardarropas # un poco ambigua
                  # (interprentando _guardarropas_ como
                  # sinónimo de conjunto de prendas)
GET /prendas      # MEJOR
```

Se lee _"Obtener todas las prendas"_

Si asumimos que hay varios guardarropas por persona:

```bash
GET /guardarropas/{id}/prendas # OK, esto sí tiene sentido
```

Se lee _"Obtener las prendas del guardarropas de id X"_

> Aclaración: las `{}` no son parte de HTTP, son una forma de expresar un patrón denominado uri-param, url-param, path-parm, parámetro de la ruta, etc:

  * `/guardarropas/5/prendas`
  * `/guardarropas/10/prendas`
  * `/guardarropas/56/prendas`
  * `/guardarropas/89/prendas`

Se podría haber expresado usando cualquiera de las siguientes convenciones:

  * `/guardarropas/{id}/prendas`
  * `/guardarropas/[id]/prendas`
  * `/guardarropas/:id/prendas`
  * `/guardarropas/<id>/prendas`


> En resumen, lo que vimos fue una ruta de listado de recursos, también llamada colección:
>
> ```bash
> GET /nombreDelRecursoEnPlural
> ```

> Como usuario de QueMePongo, quiero crear una prenda desde el navegador:


```bash
POST /prendas/                   # esto está bien, asumiendo
                                 # que hay un solo guardarropas
POST /guardarropas/{id}/prendas/ # esto está bien, asumiendo que
                                 # hay múltiples guardarropas

# ¡Procuremos mantener consistencia con las decisiones del punto anterior 😉!

POST /prenda/ # OJO, no está en plural, no sigue la convención
```

> **Corolario 8**: siempre las colecciones se escriben en plural

```bash
POST /guardarropas  # Quizás, pero como ya charlamos antes es ambiguo
POST /prendas/?id=2 # En principio no vamos a indicar el ID al crear un recurso,
                    # vamos a dejar que el sistema elija el
                    # mejor id vacante
                    # (Y SOBRE TODO EN PARCIALES)
```

> 10. Al crear recursos, los ids deberían ser autogenerados, por lo que no los especificaremos.

> En resumen, lo que vimos fue una ruta de creación
>
> ```bash
> POST /nombreDelRecursoEnPlural
> ```


> Como usuarie de QueMePongo quiero ver una prenda en particular que tengo en mi guardarropas para poder editarla

Para consulta:

```bash
GET /prendas/{id}
GET /guardarropas/{id}/prendas/{id} # Si hubiera varios guardarropas.
                                    # PEEEEEEROO incluso si hubiera varios
                                    # guardarropas, probablemente lo seguiría modelando como
                                    # GET /prendas/{id}
```

> En resumen, lo que vimos fue una ruta de detalle
>
> ```bash
> GET /nombreDelRecursoEnPlural/{id}
> ```

Para edición:

```bash
PATCH /prendas/{id}
PUT /prendas/{id}
```

> En resumen, lo que vimos fue una ruta de edición
>
> ```bash
> PUT /nombreDelRecursoEnPlural/{id}
> PATCH /nombreDelRecursoEnPlural/{id}
> ```

## Paréntesis: tipos de contenidos

```bash
$ curl -XGET http://qmp.com/prendas/42 -H "Accept: text/plain"
"Hola, soy un pantalón negro"
```

```bash
$ curl -XGET http://qmp.com/prendas/42 -H "Accept: application/json"
{
  "tipo": "pantalon",
  "color": "negro"
}
```

```bash
$ curl -XGET http://qmp.com/prendas/42 -H "Accept: text/xml"
<prenda>
  <tipo>pantalon</tipo>
  <color>negro</color>
</prenda>
```

```bash
$ curl -XGET http://qmp.com/prendas/42 -H "Accept: text/html"
<article>
  <span class="tipo">pantalon</span>
  <span class="color">negro</span>
</article>
```

* `Accept` (Cabecera de pedido que indica como quiero que me representen algo)
* `Content-Type` (Cabecera de respuesta que indica como está representado algo en mi respuesta)
* `Content-Type` (Cabecera de pedido que indica como te estoy representado algo en mi pedod)

Ahora sí, asumiendo que hay un solo guardarropas:

```bash
$ curl -XPOST /prenda/ \
       -H 'Content-Type: application/json' \
       --data '{ "tipo": "pantalon", "color": "negro" }'
```

Ahora sí, asumiendo que hay un muchos guardarropas:

```bash
# OJO, no queremos romper la consistencia de nuestra rutas
$ curl -XPOST /prenda/ \
       -H 'Content-Type: application/json' \
       --data '{ "tipo": "pantalon", "color": "negro", "guardarropa_id": 15 }'
```

```bash
$ curl -XPOST /guardarropas/15/prenda/ \
       -H 'Content-Type: application/json' \
       --data '{ "tipo": "pantalon", "color": "negro" }' # ahora sí
```


### Segunda parte: Javalin y exposición de APIs

Exploramos el código de un [API REST JSON](https://github.com/dds-utn/javalin-web-proof-of-concept/tree/example-api)

  1. Observamos la estructura de archivos (modelos, controladores, archivo semilla, rutas y código de aplicación)
  2. Extendemos el API para `/usuarios/{nombre}`

### Tercera parte: Javalin y exposición de contenido HTML

Exploramos el código de una [Aplicación cliente liviano](https://github.com/dds-utn/javalin-web-proof-of-concept/tree/example-templating)


## Material

- [Presentación](https://docs.google.com/presentation/d/1O0v4Xf-O_9RwegSMS2mvRXan0n1A_I0KNbDoxb0m4lI/edit)
- [Tutorial HTTP](https://github.com/flbulgarelli/http-tutorial/tree/master/tutorial/es): hasta el [punto 14](https://github.com/flbulgarelli/http-tutorial/tree/master/tutorial/es#14-recursos), inclusive
- [Introducción a Arquitectura Web](https://docs.google.com/document/d/1LBqAhXPzn-aeN5BIRZBmIrU5RKiYvySyWH-2Jkn-kJw/edit#heading=h.kx1xmbyu1do6)
- [Documentación de Javalin](https://javalin.io/)
- [Introducción a MVC Web del lado del servidor con Spark](https://docs.google.com/document/d/1EFxqHstgtZ5jI5_plso6nfhvSXXcaT4iyE1qaZuPtXg/edit?usp=sharing)
- Ejercicios:
  - [Ejercicio en clase: QMP7 (Modelado REST)](https://docs.google.com/document/d/1ERlDghk47Yc1_V1SQ7oCnZAC4bubHx7ZhQXS3naKMJA/edit#heading=h.uyku9mnteh0t)
  - [Ejercicio en clase: Pokemon (API REST JSON con Javalin)](https://github.com/dds-utn/javalin-web-proof-of-concept/tree/example-api)
  - [Ejercicio en clase: Modelo de consultoras](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/modelo-consultoras)
- [Repositorio base de Javalin](https://github.com/dds-utn/javalin-web-proof-of-concept)

## Para la próxima clase

- [Introducción a MVC Web del lado del servidor con Spark](https://docs.google.com/document/d/1EFxqHstgtZ5jI5_plso6nfhvSXXcaT4iyE1qaZuPtXg/edit?usp=sharing)
- [Maquetado Web](https://docs.google.com/document/d/1UoEb9bzut-nMmB6wxDUVND3V8EymNFgOsw7Hka6EEkc/edit#heading=h.6ew85j4snou0): **obligatorio** para leer
- [Tutorial HTTP](https://github.com/flbulgarelli/http-tutorial/tree/master/tutorial/es): **opcional** para seguir profundizando hasta donde puedan y quieran
- [Maquetado Web](https://docs.google.com/document/d/1UoEb9bzut-nMmB6wxDUVND3V8EymNFgOsw7Hka6EEkc/edit#heading=h.6ew85j4snou0)
