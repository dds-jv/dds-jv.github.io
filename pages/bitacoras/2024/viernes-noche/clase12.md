---
layout: page
title: Clase 12
description: Viernes (Noche, 2024)
permalink: /bitacoras/2024/viernes-n/clase-12/
---


## Resumen

En esta oportunidad estudiamos cómo conectarnos con un RDBM utilizando un ORM:

- Presentamos JPA y Hibernate
- Aprendimos el Ciclo de vida de Objetos
- Hablamos de Convenciones y Configuraciones
- Aprendimos como agregar anotaciones a nuestro modelo para mapearlo a un modelo de datos
- Aprendimos cómo persistir objetos y realizar tests sobre ellos
- Conversamos sobre cambios al modelo de objetos devenidos del mapeo relacional

## Hoja de Ruta

- JDBC
  - Sirve para Conectarnos a Bases de Datos (Relacionales)
  - Sigue la idea del patrón adapter
    - Oracle
    - SqlServer
    - Postgre
    - MariaDB
    - HSQLDB
  - Adapta muy poquitas cosas y aún tenemos que gestionar buena parte de la desadaptación de impedencia a mano (impedance missmatch)

- JPA
  - Se para encima de JDBC
  - Resuelve muchos más problemas de impedance missmatch
  - Nos da una mejor capa de abstracción del motor de base de datos

En definitiva las tecnologías que estamos usando se relacionan así:

```
JPA -> Hibernate -> JDBC -> HSLQDB/MySQL/MariaDB/Postgre
 |                   |
 |                   +- (cadenas de conexión y drivers)
 |
 +--- Anotaciones
 +--- Dependencias
 +--- Archivo de configuración persistence.xml
```
Estudiamos también el pseudocódigo de conexión y acceso a la base de datos con JDBC:

```java
// var driver = new PostgreSQL("postgre://franco:123456789@localhost:2000/qmp");
// var driver = new HSQLDB("hsqldb://un_archivo/qmp");
Driver driver = new MysqlDriver("mysql://franco:123456789@localhost:2000/qmp");
ResultSet resultados = driver.ejecutarSQL("select * from prendas");
Prendas prendas = resultados.map(resultado => {
  return new Prenda((String) resultado.get(0),  (int) resultado.get(1), ...);
});

// He aquí la base de un repositorio ^

// Pero tiene ciertos problemas:
// - es complejo de escribir
// - es difícil de mantener
// - implica repetir lógica
// - está fuertemente acoplado al motor de base de datos
// - es poco flexible: no es sencillo incorporar operaciones nuevas, elementos nuevos del domino
//   migrar de base de datos

// Por eso vamos a buscar otras alternativas

// "asperezas" entre el modelo relacional y el modelo de objetos
// => impedance mismatch (desadaptación de impedancia)
```

## Material

- [Presentación utilizada](https://docs.google.com/presentation/d/1nXNCzT81aPQgFpFG1ZpizeA92InrEi8Wsg5moYii4CY/edit#slide=id.g35f391192_00)
- [ORM](https://docs.google.com/document/d/1YLmp9vMnSzKg2emt3Bx564Tf1CLalShPc98Z8nCoi7s/edit): secciones 1 - 4
- [Código de ejemplo de conexión JDBC](https://gist.github.com/flbulgarelli/f2219952bcacb33ea35a71a4e5478399)
- [Normalización](https://docs.google.com/document/d/1Jil-3oiveXDtY1iKBCof7jE9ooRFJ-f1KjcXgaGk6F0/edit#heading=h.aa3gqw2dds4m)
- Repositorios de introducción a ORM:
   - [Fútbol versión JDBC](https://github.com/dds-utn/eg-equipos-futbol-jdbc-java)
   - Paso a paso:
      - [Mapeos básicos](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/futbol/README.md)
         - [Versión en clase](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-en-clase-2024)
      - [Colecciones](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/futbol-extendido/README.md#parte-2-extensiones)


## Para la próxima clase 📅

- Leer:
  - El código visto en esta clase, siguiendo [esta hoja de ruta](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/futbol/README.md). NOTA: Se recomienda leer mirar brevemente antes la [versión sin mapeos](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-sin-mapeos)
   - [Apunte sobre ORM (Sección 5: Subtipos en el modelo relacional)](https://docs.google.com/document/d/1YLmp9vMnSzKg2emt3Bx564Tf1CLalShPc98Z8nCoi7s)
   - [Ejercicio: Canchas de Paddle, Parte 2 (_Obligatorio_)](https://docs.google.com/document/d/1UpZX9jNuptO9fTHf-945gjelpDc4e7o-jV3GYHA3k80)

- Releer (o leer si no lo hiciste ya):
  - [Guía de anotaciones](https://docs.google.com/document/d/1jWtehhVCFYECKvpdcCxnEgWZFCv2fR2WPyUJSoiX3II/edit#heading=h.r09lefmcufkn).
  - [Apunte: Incorporar JPA a nuestra solución](https://docs.google.com/document/d/1dYvrVLRbFE9qwuKj5biz9oRBaRzj-K6ujIKOXNan02s/edit?ts=57e1f2b8#heading=h.kkyach7i1h8n)
  - [ORM](https://docs.google.com/document/d/1YLmp9vMnSzKg2emt3Bx564Tf1CLalShPc98Z8nCoi7s/edit): secciones 1 - 4
