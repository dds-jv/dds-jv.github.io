---
layout: page
title: Sobre los trabajos prácticos
description: Pautas básicas para trabajos prácticos felices
permalink: /pautas/sobre-los-trabajos-practicos
---

# Sobre los Trabajos Prácticos

<!-- 
Es posible que durante la cursada les adviertan algunas cuestiones, aunque de igual modo les brindamos una serie de buenas prácticas que usarán durante el año. Ésta iniciativa fué pensada para que puedan realizar sus desarrollos de forma práctica y entenderse entre integrantes del grupo, además de docentes.

> Algunos aspectos pueden depender (o no) de la tecnología.

### No usar `for` e `if` para operar sobre colecciones
En su lugar, usar `lambda` y `stream` (de hecho, la introducción del uso _sencillo_ de lambdas fué uno de los argumentos por los que comenzamos a utilizar Java 1.8). 

La justificación debería ser superflúa a ésta altura, pero utilizando éste tipo de mecanismos obtenemos un código que tiene menos detalles algorítmicos que el que tendría uno que use `for` e `if` para cualquier operación sobre colecciones. 

_¿Cómo se llama este concepto?_ Es fácil, empieza con **d** y termina con **eclaratividad**. 
La declaratividad es buena. Apliquen declaratividad. 

### Indenten 
Cada vez que commitean código mal formateado, [se incendia un colectivo del Grupo Plaza](https://periodicoelbarrio.com.ar/en-los-ultimos-cuatro-anos-se-incendiaron-al-menos-diez-colectivos-del-grupo-plaza/). 

_ProTip: Si usan Eclipse, hagan `CTRL + Shift + F` para atacar todos estos problemas de una. En otros IDE, seguro hay un shortcut equivalente._

### Respeten las convenciones

Esto aplica a cualquier lenguaje. Para el caso particular de Java, éstas son las convenciones básicas con respecto al nombre de los componentes que programemos:

- `CamelCase` para clases (comienzan con mayúsculas)
- `camelCase` para métodos y variables (comienzan con minúsculas)
- `SNAKE_CASE_MAYUSCULA` para constantes
- Las clases van en singular

### No generen todos los getters y setters

De los atributos de una clase sólo con el argumento de que el IDE se los genera automáticamente. Esta no es sólo una consideración, sino además una corrección de diseño ligada al grado de inmutabilidad de los componentes que desarrollen. Lean esto,en especial a partir del 2do párrafo. 

### Cuando tipeen variables, escojan siempre la interfaz antes que la clase en particular

: List en lugar de linkedList o ArrayList, Set en lugar de HashSet. Esto en la medida de lo posible: si queremos un comportamiento particular de algunas de las clases concretas, tipemos con esa clase. Si esto no es así, tipar con la interfaz nos permite cambiar el tipo de nuestras variables más fácilmente. Este thread de SO me pareció bastante claro con respecto a este tópico

###Tengan un uso consciente de los modificadores de visibilidad 
(en Java: public, private y protected y package).  Algunas reglas básicas:

Generalmente los atributos son privados
Generalmente las clases son públicas
Con respecto a los métodos, son públicos si quieren que formen parte del conjunto de mensajes que ese objeto entienda (es decir, su interfaz).

Como regla general, lo que ustedes quieren es darle la visibilidad más privada posible al componente que sea. Para tomar un ejemplo, si tienen un método público que no era utilizado por nadie salvo por otros métodos dentro del mismo objeto, y lo dejo público, mas adelante, otro programador (que  pueden ser ustedes mismos en el futuro), puede estar tentado a usarlo. Si el día de mañana queremos cambiar la lógica de este método, vamos a tener que evaluar el impacto en todos los otros objetos que utilizaron a este método (lo de siempre: acoplamiento, mantenibilidad, etc:.).
 

###Con respecto a Java en particular:

Prohibido usar Calendar o java.util.Date. Tienen que usar el api nueva de Java: LocalDate, LocalDateTime, Month, etc.

En fin, la mayoría son cuestiones sencillas que no hacen al diseño, pero son una forma de evitar retos por parte de sus ayudantes, además de mejorar su productividad cuando trabajen en equipo. 

Sin mas para agregar, saludo. Saludos!

-->

Página en construcción. Por ahora, chusmeá ésto: https://docs.google.com/document/d/1Tc2GFeGRPAYI7crzY0A1iWGbj1JpsVyf0UUH6hiVoew/edit#heading=h.egdbojxnjs20

<!--  Habrá aspectos que tendrán que investigar por su cuenta -->
