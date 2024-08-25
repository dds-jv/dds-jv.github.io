---
layout: page
title: Clase 13
description: Viernes (Noche, 2024)
permalink: /bitacoras/2024/viernes-n/clase-13/
---

## Resumen

En esta oportunidad seguimos profundizando en los conceptos de ORM y la tecnología JPA/Hibernate:

### Mapeo de atributos

Como ya vimos, mapear **tipos primitivos** (o pseudo primitivos) a columnas es relativamente directo, siempre y cuando los tipos tengan un mapeo natural a la base de datos:

  * `LocalDate` / `LocalDateTime` => `DATE` y `TIMESTAMP`
  * `String` => `VARCHAR` y `Text`
  * tipos numéricos => `INT`, `LONG`, `BIGINT`, `DECIMAL`, etc

Aún así, podemos utilizar `@Column` para personalizar aspectos más sutiles como nombres de columnas, precisión, gestión de nulls, etc.

Por otro lado, las cosas se tornan un poco mas complejas cuando estos atributos representan relaciones con otros objetos de nuestro dominio.

Por un lado, tenemos las **relaciones simples**, que se representan con `OneToOne` y `ManyToOne`, y se traducen a claves foráneas (_fks_) en la tabla que estamos mapeando. Estas relaciones son por defecto ansiosas (_eager_), es decir, que al cargar un objeto, también sus relaciones se cargarán. Esto puede ser alterado mediante el atributo `fetch` (una estrategia lazy traerá _proxies_ de los objetos en lugar de instancias de las clases de dominio).

Por otro lado, tenemos **relaciones multiples**, que se corresponden a mapeos de colecciones usando `OneToMany` y `ManyToMany`. Estos mapeos son diferidos por defecto (_lazy_). En ambos casos, estas anotaciones generarán tablas intermedias, las cuales pueden ser controladas con `@JoinColumn` (de hecho, esto en `@OneToMany` evita la generación de la tabla intermedia) y `@JoinTable`.

En ocasiones nos toparemos con atributos que no pueden ser mapeados fácilmente a tipos primitivos de la base de datos. Para estos casos tenemos dos opciones:

  * `@Convert`
  * `@Transient`

### Mapeo de herencia y atributos polimórficos

Además incorporamos el concepto de mapeo de herencia `Inheritance` y enums  (`Enumerated`): ver [acá](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/futbol-extendido-herencia/README.md#parte-3-herencia).

Mencionamos algunos corolarios:

Mapeo de herencia:

- corolario 1:  solo nos importa considerar el mapeo de herencia cuando
  - atributo persistente
  - de una clase persistente
  - tipado con un tipo polimórfico
- corolario 2:
  - solo la single table TIENE discriminador
- corolario 3:
  - en Joined, las tablas "hijas" tiene un ID que es tanto PK como FK
- corolario 4:
  - **NO** existe el mapeo de polimorfirmo, sólo de herencia
  - Si queremos mapear una interfaz con las mismas restricciones del corolario 1, tenemos que realizar algún tipo de conversión:
    - Opción 1: convertir la interfaz en un enum polimórfico (muy limitada, muy limitante)
    - Opción 2: convertir nuestra interfaz en una clase abstracta (malas noticias: no siempre se puede)

## Material

- [Presentación](https://docs.google.com/presentation/d/1FT1HtZ4pfFJnszEcQltUsXjO3dQcTi3szTA9eExBiDI/edit#slide=id.g82d3d5330f_0_6)
- Código utilizado:
  - [Primera parte](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-sin-mapeos)
    - [Solución](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/futbol-extendido/README.md#parte-2-extensiones)
  - [Segunda parte](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-sin-mapeos)
    - [Solución](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia)
    - [Solución en clase](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-en-clase-2024)
    - [Alternative enums](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-alternativa-enums)
- [Guía de anotaciones](https://docs.google.com/document/d/1jWtehhVCFYECKvpdcCxnEgWZFCv2fR2WPyUJSoiX3II/edit#heading=h.r09lefmcufkn).
- [Apunte: Incorporar JPA a nuestra solución](https://docs.google.com/document/d/1dYvrVLRbFE9qwuKj5biz9oRBaRzj-K6ujIKOXNan02s/edit?ts=57e1f2b8#heading=h.kkyach7i1h8n)


## Para la próxima clase

- [Parcial Juego de Tronos](https://docs.google.com/document/d/1Qjgq_KS73UUn8337LEoXi_M28wtgi-EkBuaQ7N-9Ks4/edit#heading=h.tlw7c15gv98x)
