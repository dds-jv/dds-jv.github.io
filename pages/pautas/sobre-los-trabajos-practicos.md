---
layout: page
title: Sobre los trabajos prácticos
description: Pautas básicas para trabajos prácticos felices
permalink: /pautas/sobre-los-trabajos-practicos
---
# Sobre los Trabajos Prácticos

Es posible que durante la cursada se adviertan algunas cuestiones, aunque de igual modo les brindamos una serie de buenas prácticas que usarán durante el año. Ésta iniciativa fué pensada para que puedan entenderse realizando sus desarrollos de forma práctica.

> Algunos aspectos dependen de la tecnología, por lo que para otro lenguaje y/o IDE deberían averiguarlo por su cuenta.

## No usen `for` e `if` para operar sobre colecciones
En su lugar, usen `lambda` y `stream` (de hecho, la introducción del uso _sencillo_ de `lambdas` fué uno de los argumentos por los que comenzamos a utilizar Java 1.8).

La justificación debería ser supérflua a ésta altura, pero utilizando éste tipo de mecanismos obtienen un código con menos detalles algorítmicos que el que tendría uno que use `for` e `if` para cualquier operación sobre colecciones.

¿Cómo se llama este concepto? Es fácil, empieza con **d** y termina con **eclaratividad**.

La declaratividad es buena. Aplíquenla ;).

## Por favor, tabulen

Cada vez que suben código mal formateado, [Bob Patiño se golpea con un rastrillo](https://www.youtube.com/watch?v=zo2VwN4SPXI) (no van a querer verlo completo).

_ProTip: Si usan Eclipse, usen la combinación de teclas `CTRL + Shift + F` para atacar todos estos problemas de un saque._

## Respeten las convenciones

Esto aplica a cualquier lenguaje. Para el caso particular de Java, éstas son las convenciones básicas con respecto al nombre de los componentes que programarán:

- `CamelCase` para clases (comienzan con mayúsculas).
- `camelCase` para métodos y variables (comienzan con minúsculas).
- `SNAKE_CASE_MAYUSCULA` para constantes.
- Las clases van en singular.

## No generen todos los _accessors_ de cada atributo

> Con _accessors_ nos referimos a los **getters** y **setters**.

Es entendible que quieran crearlos ya que el IDE no los genera automáticamente, sin embargo no es una razón suficiente como para hacerlo. Ésto es una corrección de diseño ligado al grado de inmutabilidad de sus desarrollos.

_¿No conocen la **inmutabilidad**? Lean [éste apunte](http://wiki.uqbar.org/wiki/articles/inmutabilidad.html) (cortesía de Uqbar)._

## Cuando definan el tipo de una variable, elijan siempre la interfaz en lugar de la clase

Por ejemplo:
- `List` en lugar de `LinkedList` o `ArrayList`.
- `Set` en lugar de `HashSet`.

Aunque, si necesitan un comportamiento particular de la clase concreta, deberían usarla. Si no es el caso, tengan presente que definiendo el tipo con la interfaz nos permite cambiar el tipo de las variables de una forma más fácil.
Vean ésta [discusión en StackOverflow](https://stackoverflow.com/questions/3383726/java-declaring-from-interface-type-instead-of-class), que es muy clara al respecto.

## Tengan un uso consciente de los modificadores de visibilidad
_En Java: `public`, `private`, `protected` y `package`._

Algunas reglas básicas:
- Generalmente los atributos son privados.
- Generalmente las clases son públicas.
- Con respecto a los métodos, son públicos si quieren (o necesitan) que formen parte de la interfaz.

Como regla general, lo que ustedes quieren es darle la visibilidad más privada posible al componente que sea. Para tomar un ejemplo, si tienen un método público que no era utilizado por nadie salvo por otros métodos dentro del mismo objeto y lo dejo público, mas adelante otro programador (o ustedes mismos en el futuro) puede estar tentado a usarlo. Si en el día de mañana ustedes quieren cambiar la lógica de este método, van a tener que evaluar el impacto en todos los otros objetos que utilizaron a este método (lo de siempre: acoplamiento, mantenibilidad, etcétera).

# Sobre Java en particular

## No usar `Calendar` o `java.util.Date`

Ambas son clases _antiguas_ con varias falencias de diseño. A partir de Java 1.8 debemos usar la nueva API: `LocalDate`, `LocalDateTime`, `Month`, etcétera.

[Acá hay una entrada de blog](http://blog.eddumelendez.me/2016/07/conociendo-la-nueva-date-api-en-java-8-parte-i/) que explica muy claro el tema y detalla a la API.

