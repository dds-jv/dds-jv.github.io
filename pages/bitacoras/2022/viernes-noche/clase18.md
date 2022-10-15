---
layout: page
title: Clase 18
description: Viernes (Noche, 2022)
permalink: /bitacoras/2022/viernes-n/clase-18/
---


## Resumen

En esta clase seguimos trabajando con [Spark](http://sparkjava.com/), entendiendo como las páginas tienen estructuras generales conocidas como _Layouts_, y como las plantillas  (_templates_) y _partials_ nos pueden ayudar a no repetir lógica de vista.


### Partials y Layouts

> partials/fragmento/componente (control directo) vs layouts (inversión de control)

Problema: ¡Código repetido! Solución: ¡depende!. ¿Es el código repetido una estructura general para toda la aplicación, o al menos una parte de ella? ¿O se trata de fragmentos que aparecen con alguna frecuencia, en lugares diferentes, pero sin obedecer a una estructura general?

Dependiendo el caso, estamos hablando de un layout (disposición) o un fragmento/componente (partial).

### Layouts

Por un lado, tenemos que invocar el layout:

{% raw %}
```handlebars
{{> layout.html.hbs }}
```
{% endraw %}

Por otro lado, tenemos que definirlo, con potenciales "huecos", al mejor estilo template-method:

{% raw %}
```handlebars
{{# block "contenido" }}
{{/block}}
```
{% endraw %}

Luego, en la vista que nos interesa aplicar ese layout, utilizaremos `partial` para llenar esos huecos:

{% raw %}
```handlebars
{{# partial "contenido" }}
{{/partial}}
```
{% endraw %}

### Fragmentos

Lo implementamos usando la misma sintaxis, sólo que no tienen huecos:

{% raw %}
```handlebars
{{> fragmento.html.hbs }}
```
{% endraw %}

Alternativamente, podemos registrar _helpers_, que son pequeñas funciones que extienden la sintaxis de Handebars:

```java
HandlebarsTemplateEngine engine = new HandlebarsTemplateEngine() {
    {
        this.handlebars.registerHelper("holaMundo", (o, options) -> {
            return "hola mundo";
        });
    }
};
```

Luego de hacer esto, podremos usarlo en nuestros _templates_:

{% raw %}
```handlebars
{{holaMundo}}
```
{% endraw %}

### Paréntesis: repaso breve de las estructuras de control

Iteración:


{% raw %}
```handlebars
{{#each consultoras}}
    <li>{{nombre}}</li>
{{/each}}
```
{% endraw %}

o también:

{% raw %}
```handlebars
{{#consultoras}}
    <li>{{nombre}}</li>
{{/consultoras}}
```
{% endraw %}

### Forms de guardado y transacciones

* REST: `POST /consultoras` vs `GET /consultoras/nueva`

```java
// el primero muestra el formulario
Spark.get("/consultoras/nueva", consultorasController::nueva, engine);
// el segundo es quien recibe la información del formulario y crea al objeto
Spark.post("/consultoras", consultorasController::crear);
```

* Formularios de creación: indicar el uso del método `POST`.


```html
<form method="POST" action="/consultoras">
    <label for="nombre">Nombre</label>
    <input name="nombre" type="text">

    <label for="cantidadEmpleados">Cantidad de empleados</label>
    <input name="cantidadEmpleados" type="number" min="1" max="100" >

    <input type="submit">
</form>
```


* Importancia de redirigir luego de un `POST` en una aplicación Web (o devolver 201 en un API). Si no, es fácil generar sitios propensos a envíos duplicados de formularios:


```java
  public Void crear(Request request, Response response) {
    // ...
    response.redirect("/");
    return null;
  }
```

* Manejo declarativo de transacciones. No usar explícitamente `transaction.begin()`, `transaction.commit()`, `transaction.rollback()`. En su lugar utilizar `TransactionalOps` y `withTransaction`:

```java
public class ConsultorasController implements WithGlobalEntityManager, TransactionalOps {

  // ...

  public Void crear(Request request, Response response) {
    withTransaction(() -> {
      Consultora consultora = new Consultora(
              request.queryParams("nombre"),  // no confundirse! Aunque el método se llama
                                              // queryParam, en realidad son body params
              Integer.parseInt(request.queryParams("cantidadEmpleados")));
      RepositorioConsultoras.instancia.agregar(consultora);
    });
    // ...
  }
```

## Material

- [Documentación de Spark](http://sparkjava.com/documentation)
    - De nuevo (repaso de Spark y cómo y por qué separar en controladores): [Introducción a MVC Web del lado del servidor con Spark](https://docs.google.com/document/d/1EFxqHstgtZ5jI5_plso6nfhvSXXcaT4iyE1qaZuPtXg/edit?usp=sharing)
- [Código de la clase](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/codigo-en-clase-2022-10-14)
- [Maquetado Web](https://docs.google.com/document/d/1UoEb9bzut-nMmB6wxDUVND3V8EymNFgOsw7Hka6EEkc/edit#heading=h.6ew85j4snou0)
  - [Tutorial de Grid](https://cssgridgarden.com/#es)
  - [Tutorial de Flex](https://flexboxfroggy.com/#es)
