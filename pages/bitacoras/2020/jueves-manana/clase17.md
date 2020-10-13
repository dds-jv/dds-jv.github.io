---
layout: page
title: Clase 17
description: Jueves (Mañana, 2020)
permalink: /bitacoras/2020/jueves-m/clase-17/
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

Y finalmente veremos como mantener persistir el orden en las listas para poder obtener los objetos en el mismo orden que los teniamos que en objetos. `@OrderColumn(name = "nombreDeColumnaQueMantieneElOrden")`

## Material

- [Presentación utilizada](https://docs.google.com/presentation/d/1GDwgLehXzBXVdi6vTNe4-T6IDMZ65gBMex5swtYIb_U)
- [Video de la clase](https://www.youtube.com/watch?v=3qTAsOnNVmw&list=PL7cuUUqxhfsNt7ycizHgksigXDesa_IGl&index=12)

## Apuntes

- [Mapeo Objetos/Relacional](https://docs.google.com/document/d/1YLmp9vMnSzKg2emt3Bx564Tf1CLalShPc98Z8nCoi7s/edit)
- [Guía de anotaciones](https://docs.google.com/document/d/1jWtehhVCFYECKvpdcCxnEgWZFCv2fR2WPyUJSoiX3II/edit#heading=h.r09lefmcufkn)

## Para la próxima clase

Analizar que pasa con el ejemplo de `Auto -> Posicion`

![](https://www.planttext.com/api/plantuml/img/SoWkIImgAStDuU9ApaaiBbPmB2t9LwXMu580Wk2IeioyT8M2n9BKl99KhbgOce3yuipapFmyXMfaPJc99PabfIaeGlbvwM0ne5QmmRfsSCrSN0wfUIb0cm40)

![](http://www.plantuml.com/plantuml/png/POx12i8m343l-Ogmez0_66DUl7Zn3wGqOGlKLjhq8DP_jsNA3hiaBoHvoPpL9YqF3x0ACJf9pZC0S53H5mxded50cv4xuHiGJoZKaZ4jF6CM9p7SXN0SBzTfWi--VFjrDy6_EaYyRUE5EiMmTEoIxM2j9icoggbrDy3CWThJNm00)