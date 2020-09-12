---
layout: page
title: Clase 17
description: Viernes (Noche, 2020)
permalink: /bitacoras/2020/viernes-n/clase-17/
---

¡Esta fue nuestra decimoquinta clase virtual!

## Resumen

En esta oportunidad seguimos profundizando en los conceptos de ORM y la tecnología JPA/Hibernate. Además incorporamos el concepto de mapeo de herencia.

### 1 El problema

No hay subtipos en relacional :(

### 2 La solución

Hay distintas formas de simulararla según la necesidad: 3 + 1 estrategias:

  - Single table
  - Joined
  - Table Per Class
  - Mapped Superclass

### 3 `Difusion`: Polimorfimo clásico

> Notas:
> * El código completo que acompaña a este paso a paso se encuentra [acá](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia)
> * Para ver el código **ANTES** de este paso, ver la rama [`futbol-extendido-herencia-sin-mapeos`](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-sin-mapeos)

Se puede hacer con single table o también se puede enumerar, bajo ciertas condiciones.

**LO IMPORTANTE ES QUE SE CONVIERTE LA INTERFAZ EN CLASE (que puede ser abstracta)**

### 4 `Difusion` reintepretada

Cuando las entidades son stateless y presentan una jerarquía de subtipos acotada, dando lugar a subtipos bien conocidos y por consiguiente
a instancias bien conocidas, es posible evitar el problema de los subtipos mediante la conversión a enums. Esto se explora en la rama `futbol-extendido-herencia-alternativa-enums`


### 5 `Producto`: Herencia clásica

También va con single table. Incluso podremos reutilizar algunas columnas.

### 6 `Producto` bis: Una jerarquía de subtipos un poco "amplia"

Cuando la divergencia en estado y semántica empieza a crecer, empezamos a tener problemas con nuestro modelo de datos,
que se convierte en una "bolsa de gatos". Joined nos ayudará a normalizar a expensas de un poco de rendimiento.

### 7 `Competitivo`: Una jerarquía que no es persitente

### 8 `Auditable`: Una jerarquía persistente pero muy laxa

Ojo, además de usar `table-per-class` tenemos que cambiar el generador de IDs a `SEQUENCE`.
En este caso particular no hubo grandes problemas, pero ojo, porque si la FK hubiera estado del otro lado de la relación, no hubiera sido posible
crear una verdadera FK (porque no hay una tabla a la que referenciar) sino tan solo una columna indexada que apunta a la nada. Si bien anda,
se pierde la integridad referencial.


## Material

- [Video de la clase](https://us02web.zoom.us/rec/play/7dICBtP0Dl6laDSU9o4Y71mAKpkm-Exj2TCMtiKcfJrLC4e2M8VWCcg0TTUjVudA-W0eOv6oc-jBzUCZ.DvF-_f3M2uy2IRaI)
- [Presentación](https://docs.google.com/presentation/d/1v7fZvU_-kKjSHXKQBXhQpwsq0Taizm6TgWSTSRwrdzE/edit)
- Código utilizado:
  - https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-sin-mapeos
  - https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia-alternativa-enums
  - https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-extendido-herencia
- [Guía de anotaciones](https://docs.google.com/document/d/1jWtehhVCFYECKvpdcCxnEgWZFCv2fR2WPyUJSoiX3II/edit#heading=h.r09lefmcufkn).
- [Apunte: Incorporar JPA a nuestra solución](https://docs.google.com/document/d/1dYvrVLRbFE9qwuKj5biz9oRBaRzj-K6ujIKOXNan02s/edit?ts=57e1f2b8#heading=h.kkyach7i1h8n)


## Para la próxima clase

- [Parcial Juego de Tronos](https://docs.google.com/document/d/1Qjgq_KS73UUn8337LEoXi_M28wtgi-EkBuaQ7N-9Ks4/edit#heading=h.tlw7c15gv98x)

## Y para la otra

- [Liberamos el enunciado del TPA4](https://docs.google.com/document/d/1GNJDaTuO192ntS5Y8sqic2sucV5HPIvHt3izsl-ySLs)
