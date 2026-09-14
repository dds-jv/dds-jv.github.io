---
layout: page
title: Clase 16bis
description: Viernes (Noche, 2026)
permalink: /bitacoras/2026/viernes-n/clase-16bis/
---

## Temario

 * MVC del lado del servidor (continuación).
 * Formulario de alta (continuación).
 * Integración con persistencia.
 * Sesiones y Login.

## Resumen

En esta clase cerramos nuestro estudio de UI MVC Web con [Javalin](https://javalin.io). Conversamos sobre la integración con el contexto de persistencia y manejo de sesión.


Por un lado, realizamos un ejercicio: [QMP8](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/qmp-web). Hablamos del Manejo declarativo de transacciones: No usar explícitamente `transaction.begin()`, `transaction.commit()`, `transaction.rollback()`. En su lugar utilizar `WithSimplePersistenceUnit` y `withTransaction`:

```java
public class ConsultorasController implements WithSimplePersistenceUnit {

  // ...

  public Void crear(Context context) {
    withTransaction(() -> {
      Consultora consultora = new Consultora(
              context.formParam("nombre"), // son parámetros del cuerpo (body)
                                           // codificados como application/x-www-form-urlencoded
              Integer.parseInt(context.formParam("cantidadEmpleados")
      ));
      RepositorioConsultoras.instancia.agregar(consultora);
    });
    // ...
  }
```


Por otro lado, repasamos (la explicación completa está en el video subido al webcampus) cómo funcionan las sesiones HTTP como forma de simular estado en un protocolo _stateless_. Además integraremos nuestras vistas con la persistencia, utilizando transacciones para las operaciones mutables.


## Material


- [Documentación de Javalin](https://javalin.io/documentation)
- De nuevo (repaso de ruteadores y cómo y por qué separar en controladores): [Introducción a MVC Web del lado del servidor con Javalin](https://docs.google.com/document/d/1jMkmm2fk9FO-h-cxVz_v0r6p-UNl3sew1E1zXnP5WPQ/edit?tab=t.0)
- [Código: consultoras con soporte transaccional para Java 17](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/modelo-consultoras-transaccional)
- [Código: consultoras para Java 17](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/modelo-consultoras-sin-login)
- [Código: base de Java 17 + Javalin + JPA](https://github.com/dds-utn/javalin-web-proof-of-concept)
- [Ejercicio de QMP8](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/qmp-web)
    - [Resolución del login](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/qmp-web-con-login)

## Para la próxima clase

* Leer [El diablo está en los detalles](https://medium.com/arquitecturas-concurrentes/arquitecturas-concurrentes-episodio-1-el-diablo-est%C3%A1-en-los-detalles-692766ac669b)
* Opcional: [Introducción a arquitectura](https://docs.google.com/document/d/1XaKMrWPA0jntDK29gtEDRw-CoQgWXfHOmdbmihg4MpE/edit#heading=h.z9jwy1eurzt9)
* Leer [EntregasYaYaYa](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit#heading=h.tvlfd8lfshb0)
