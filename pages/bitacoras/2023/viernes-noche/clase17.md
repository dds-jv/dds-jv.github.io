---
layout: page
title: Clase 17
description: Viernes (Noche, 2023)
permalink: /bitacoras/2023/viernes-n/clase-17/
---


## Resumen

En esta clase seguimos trabajando con [Spark](http://sparkjava.com/), entendiendo como las páginas tienen tanto _fragmentos_ de código repetitivos como estructuras generales conocidas como _Layouts_, y como las plantillas  (_templates_) y los elementos `block` y `partial` de Handlebars nos pueden ayudar a no repetir lógica de vista.

Además, repasamos qué son los formularios, cómo podemos hacer formularios de creación de recursos con HTML y HTTP, y qué implicancias tienen desde el punto de vista del acceso al contexto de persistencia.

### Fragmentos y Layouts

> partials/fragmentos/componentes (control directo) vs layouts (inversión de control)

Problema: ¡Código repetido! Solución: ¡depende!. ¿Es el código repetido una estructura general para toda la aplicación, o al menos una parte de ella? ¿O se trata de fragmentos que aparecen con alguna frecuencia, en lugares diferentes, pero sin obedecer a una estructura general?

Dependiendo el caso, estamos hablando de un fragmento/componente (partial) o un layout (disposición).

### Layouts

Los layouts nos proponen una forma de reutilizar el código HTML definiendo (al menos un) archivo
que hace de marco general y define puntos de extensión o "huecos", que las vistas completarán.

No serán estos marcos generales quienes invoquen a las vistas, sino las vistas quienes se enmarcarán en nuestros _layouts_.

Para implementar esta idea, por un lado, en nuestras vistas tenemos que invocar el layout:

{% raw %}
```handlebars
{{> layout.html.hbs }}
```
{% endraw %}

Por otro lado, tenemos que crear nuestro archivo `layout.html.hbs`, con uno o más "huecos" nombrados, al mejor estilo template-method:

{% raw %}
```handlebars
{{# block "principal" }}
{{/block}}
```
{% endraw %}


[Link al código completo](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/984caccb92c40ae08a0253d8c7c8a9e8abc002c8/src/main/resources/templates/layout.html.hbs)

Luego, volveremos a la la vista en que nos interesa aplicar ese layout, y utilizaremos `partial` para llenar esos huecos:

{% raw %}
```handlebars
{{# partial "principal" }}
{{/partial}}
```
{% endraw %}


[Link al código completo](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/984caccb92c40ae08a0253d8c7c8a9e8abc002c8/src/main/resources/templates/index.html.hbs)

### Fragmentos

Nuestros fragmentos son archivos con porciones de HTML que invocamos directamente desde nuestra vista para que nos aporten un fragmento (justamente) de código reutilizable. Los implementamos usando la misma sintaxis, sólo que no tienen huecos:

{% raw %}
```handlebars
{{> contratanos.html.hbs }}
```
{% endraw %}

[Link al código completo](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/984caccb92c40ae08a0253d8c7c8a9e8abc002c8/src/main/resources/templates/blog.html.hbs)

Estos fragmentos definirán componentes HTML reutilizables, como por ejemplo, un botón _contratanos_ genérico que insertaremos en más de un lugar de la página:


```handlebars
<!-- Probablemente sea un poco más complejo-->
<a href="/....">Contratanos (...)</a>
```

[Link al código completo](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/984caccb92c40ae08a0253d8c7c8a9e8abc002c8/src/main/resources/templates/contratanos.html.hbs)

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

* Manejo declarativo de transacciones. No usar explícitamente `transaction.begin()`, `transaction.commit()`, `transaction.rollback()`. En su lugar utilizar `WithSimplePersistenceUnit` y `withTransaction`:

```java
public class ConsultorasController implements WithSimplePersistenceUnit {

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
