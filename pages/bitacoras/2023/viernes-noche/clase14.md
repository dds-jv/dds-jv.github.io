---
layout: page
title: Clase 14
description: Viernes (Noche, 2023)
permalink: /bitacoras/2023/viernes-n/clase-14/
---


## Resumen

En esta oportunidad seguimos profundizando en los conceptos de ORM y la tecnología JPA/Hibernate. Presentamos la anotación `OrderColumn`
 e incorporamos los conceptos de valores y entidades (_value_ object vs _entities_) y las anotaciones `ElementCollection`, `Embedded` y `Embeddable`. Además, encaramos un parcial como ejercicio integrador.

Algunos corolarios:

- **Corolario 1**: por defecto, los tipos con los que tipamos a nuestras colecciones (set, list, etc)
    **NO** son tenidos en cuenta.
- **Corolario 2**: por defecto, todas las relaciones funcionan como una bolsa (_bag_: con repetidos, sin orden)
- **Corolario 3**: podemos usar `OrderColumn` para mantener el orden de las listas en las **que me interese
    preservarlo a nivel objetos y/o relacional**
- **Corolario 4**: `OrderColumn` va a la tabla intermedia cuando se trata de una relación _many-to-many_
- **Corolario 5**: las relaciones se cargan **por defecto** de forma diferida (lazy) esto se puede cambiar con el `fetchType` de las relaciones. Este comportamiento está vinculado al problema llamado `N + 1`
- **Corolario 6**: no se pueden persistir atributos multivaluados de forma directa, pero se pueden usar `ElementCollection`. evitando así tener que tener una `@Entity` adicional (aún sí se necesaria una **tabla** adicional)
- **Corolario 7**: Los `ElementCollection` soportan las mismas anotaciones de column y `OrderColumn`
- **Corolario 8**: Los `Embeddable` puede ser usados en `Elementcollection`s
- **Corolario 9**: Los `Embeddable` **no son** enums ni viceversa
- **Corolario 10**: Los `Embeddable` **no** soportan polimorfismo, ergo para poder embeber algo, tiene que ser **no** polimórfico
- **Corolario 11**: Los `Embeddable` **tienen** que ser value objects

Paréntesis: Taxonomías de objetos. Recordar que los estados son una terna de:

- estado
- identidad
- comportamiento


Si bien entonces todos los objetos tienen estas tres características, no todas son igualmente importantes. Por eso tenemos al menos cuatro tipos de _estereotipos_ de objetos:

- _Símbolos_ (como por ejemplo los enums básicos): lo importante es su identidad, no tienen estado, y el comportamiento está supeditado a su identidad
- _Entidades_: lo importante es su identidad, luego su estado y el comportamiento está supeditado a estos dos
- _Servicios_ (ejemplo, un strategy): son objetos que tienen comportamiento importante, estado supeditado al comportamiento y poca o nula identidad
- _Valores_ (_value-objects_): son objectos donde lo más importante es el estado, tienen comportamiento supeditado al mismo y NO tienen identidad importante.

Ver también [acá](https://martinfowler.com/bliki/EvansClassification.html)

## Material

- [Presentación](https://docs.google.com/presentation/d/1mE-U5H8iRxOB5P-QXHwwfNGktn_7QqOfTfUprRvlne4/edit)
- Ejemplo de clase:
  - [Embebibles](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/localizacion-sin-mapeos)
  - [Solución](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/localizacion)
  - [Solución en clase](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/localizacion-en-clase-2023)
- [Parcial Juego de Tronos](https://docs.google.com/document/d/1Qjgq_KS73UUn8337LEoXi_M28wtgi-EkBuaQ7N-9Ks4/edit#heading=h.tlw7c15gv98x)
  - [Solución](https://docs.google.com/document/d/1BzxQmaeqVCkM68UvYwPcO8JwhsCuIZJXjrXAeEogjh8/edit)


## Para la próxima clase

1. [Introducción a Arquitectura Web](https://docs.google.com/document/d/1LBqAhXPzn-aeN5BIRZBmIrU5RKiYvySyWH-2Jkn-kJw/edit#heading=h.kx1xmbyu1do6)
1. [Tutorial HTTP](https://github.com/flbulgarelli/http-tutorial/tree/master/tutorial/es): hasta el punto 8. Hacerlo luego de leer el apunte anterior.

## Y luego...

* Liberaremos el enunciado del TPI4: Juego de Tronos
* Liberamos el enunciado del TPA4
