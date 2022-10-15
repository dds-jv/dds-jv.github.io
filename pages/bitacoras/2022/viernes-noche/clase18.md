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

Problema: Código repetido
Solución: depende. ¿Es el código repetido una estructura general para toda la aplicación, o al menos una parte de ella? ¿O se trata de fragmentos que aparecen con alguna frecuencia, en lugares diferentes, pero sin obedecer a una estructura general?

Dependiendo el caso, estamos hablando de un layout (disposición) o un fragmento/componente (partial).

### Layouts

Por un lado, tenemos que invocar el layout:

```handlebars
{{> layout.html.hbs }}
```

Por otro lado, tenemos que definirlo, con potenciales "huecos", al mejor estilo template-method:

```handlebars
{{# block "contenido" }}
{{/block}}
```

Luego, en la vista que nos interesa aplicar ese layout, utilizaremos `partial` para llenar esos huecos:

```handlebars
{{# partial "contenido" }}
{{/partial}}
```

### Fragmentos

Lo implementamos usando la misma sintaxis, sólo que no tienen huecos:

```handlebars
{{> fragmento.html.hbs }}
```


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

```handlebars
{{holaMundo}}
```

### Paréntesis: repaso breve de las estructuras de control

Iteración:


```handlebars
{{#each consultoras}}
    <li>{{nombre}}</li>
{{/each}}
```

o también:

```handlebars
{{#consultoras}}
    <li>{{nombre}}</li>
{{/consultoras}}
```

### Forms de guardado y transacciones

* REST: `POST /consultoras` vs `GET /consultoras/nueva`
* Importancia de redirigir luego de un `POST` en una aplicación Web (o devolver 201 en un API)
* Manejo declarativo de transacciones:

```java
withTransaction(() ->{
    RepositorioConsultoras.instancia.agregar(nueva);
    usuario.agregarConsultora(nueva);
});
```

## Material

- [Documentación de Spark](http://sparkjava.com/documentation)
- [Código de la clase](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/codigo-en-clase-2022-10-14)
- [Maquetado Web](https://docs.google.com/document/d/1UoEb9bzut-nMmB6wxDUVND3V8EymNFgOsw7Hka6EEkc/edit#heading=h.6ew85j4snou0)
  - [Tutorial de Grid](https://cssgridgarden.com/#es)
  - [Tutorial de Flex](https://flexboxfroggy.com/#es)
