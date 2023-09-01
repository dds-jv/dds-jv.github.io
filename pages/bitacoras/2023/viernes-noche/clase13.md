---
layout: page
title: Clase 13
description: Viernes (Noche, 2023)
permalink: /bitacoras/2023/viernes-n/clase-13/
---

## Resumen

En esta oportunidad seguimos profundizando en los conceptos de ORM y la tecnología JPA/Hibernate:

 - Mapeos sencillos (tipos primitivos)
 - Mapeo de relaciones simples (`OneToOne` y `ManyToOne`)
 - Mapeos de colecciones (`OneToMany` y `ManyToMany`)

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

- [Presentación](https://docs.google.com/presentation/d/1v7fZvU_-kKjSHXKQBXhQpwsq0Taizm6TgWSTSRwrdzE/edit)
  - [Presentación del Jueves](https://docs.google.com/presentation/d/14xaa6U5DOsKBPnenWADOILN9vt-mNMYTyR4VjHOTOQ8/edit)
- Código utilizado:
  - [Primera parte](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-sin-mapeos)
    - [Solución](https://github.com/dds-utn/jpa-proof-of-concept-template/blob/futbol-extendido/README.md#parte-2-extensiones)
  - [Segunda parte](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-sin-mapeos)
    - [Solución](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia)
    - [Solución en clase](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-en-clase-2023)
    - [Alternative enums](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-alternativa-enums)
- [Guía de anotaciones](https://docs.google.com/document/d/1jWtehhVCFYECKvpdcCxnEgWZFCv2fR2WPyUJSoiX3II/edit#heading=h.r09lefmcufkn).
- [Apunte: Incorporar JPA a nuestra solución](https://docs.google.com/document/d/1dYvrVLRbFE9qwuKj5biz9oRBaRzj-K6ujIKOXNan02s/edit?ts=57e1f2b8#heading=h.kkyach7i1h8n)


## Para la próxima clase

- [Parcial Juego de Tronos](https://docs.google.com/document/d/1Qjgq_KS73UUn8337LEoXi_M28wtgi-EkBuaQ7N-9Ks4/edit#heading=h.tlw7c15gv98x)
