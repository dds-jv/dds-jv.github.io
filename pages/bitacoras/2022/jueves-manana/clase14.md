---
layout: page
title: Clase 14
description: Jueves (Mañana, 2022)
permalink: /bitacoras/2022/jueves-m/clase-14/
---

**¡Bienvenidos nuevamente a diseño en pantuflas!**

## Resumen

En esta oportunidad seguimos profundizando en los conceptos de ORM y la tecnología JPA/Hibernate. Además incorporamos el concepto de mapeo de herencia.

Además vamos a entender el concepto de consulta polimorfica para poder analizar que estrategia de herencia voy a utilizar para persistir.
    - Single Table (Una tabla)
    - Joined (Tabla por clase)
    - Table per concrete class (Tabla por clase **concreta**)
      - Y sus estrategias de generación de ids 🤓

Y en el caso de que no nos interese hacer consultas polimorficas podriamos usar `@MappedSuperclass`

Además vemos las alternativas que tenemos cuando nos enfrentamos a interfaces:
    - Si no tienen estado podriamos conventirlas en enum o en clase abstracta
    - Si tiene estado deberiamos convertirlas en clases abstractas

## Material

- [Presentación utilizada](https://docs.google.com/presentation/d/14xaa6U5DOsKBPnenWADOILN9vt-mNMYTyR4VjHOTOQ8/edit?usp=sharing)
- [Video de la clase](https://youtu.be/XHRUrw3DcC4)

## Apuntes

- [Mapeo Objetos/Relacional](https://docs.google.com/document/d/1YLmp9vMnSzKg2emt3Bx564Tf1CLalShPc98Z8nCoi7s/edit)
- [Guía de anotaciones](https://docs.google.com/document/d/1jWtehhVCFYECKvpdcCxnEgWZFCv2fR2WPyUJSoiX3II/edit#heading=h.r09lefmcufkn)
