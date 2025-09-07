---
layout: page
title: Clase 14
description: Viernes (Noche, 2025)
permalink: /bitacoras/2025/viernes-n/clase-14/
---

## Resumen

En esta oportunidad seguimos profundizando en los conceptos de ORM y la tecnología JPA/Hibernate. Presentamos la anotación `OrderColumn`
 e incorporamos los conceptos de valores y entidades (_value_ object vs _entities_) y las anotaciones `ElementCollection`, `Embedded` y `Embeddable`.

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

## Taxonomías de objetos

> Nota: La terminología de taxonomías, tipos o estereotipos de objetos está inspirada
> en las secciones _A Model Expressed in Software_ y _The Lifecycle of a Domain Object_ del capítulo 2 del libro _Domain Driven Design_ (DDD) de Eric Evans
> Recomendamos fuertamente la lectura del material original. 

Además estudiamos _taxonomías de objectos_:

Recordar que los objetos son una terna de:

- estado
- identidad
- comportamiento

Si bien entonces todos los objetos tienen estas tres características, no todas son igualmente importantes. Por eso tenemos al menos cuatro tipos de _estereotipos_ de objetos:

- _Entidades_: lo importante es su identidad, luego su estado y el comportamiento está supeditado a estos dos ejes. Como se menciona en DDD:

  > Object modeling tends to lead us to focus on the attributes of an object, but the fundamental concept of an  
  > ENTITY is an abstract continuity threading through a lifecycle and even multiple forms.  
  > Some objects are not defined primarily by their attributes. They represent a thread of identity that  
  > runs through time and often across distinct representations. Sometimes such an object must be  
  > matched with another object even though attributes differ. An object must be distinguished from  
  > other objects even though they might have the same attributes. Mistaken identity can lead to data  
  > corruption.  
  >
  > An object defined primarily by its identity is called an ENTITY. ENTITIES have special modeling and  
  > design considerations. They have lifecycles that can radically change their form and content, while a thread  
  > of continuity must be maintained. Their identities must be defined so that they can be effectively tracked.  
  > Their class definitions, responsibilities, attributes and associations should revolve around who they are,  
  > rather than the particular attributes they carry. Even for ENTITIES that don’t transform so radically or have  
  > such complicated lifecycles, applying the semantic category leads to more lucid models and more robust  
  > implementations.

- _Símbolos_ (como por ejemplo los enums básicos): lo importante es su identidad, pero **no tienen estado**, y el comportamiento está supeditado a su identidad. Son objetos que se utilizan fundamentalmente para identificar y discriminar otros objetos y es común que sus nombres contengan las expresiones _CodigoDe_, _TipoDe_, etc. 
- _Valores_ (_value-objects_): son objectos donde lo más importante es el estado, tienen comportamiento supeditado al mismo y NO tienen identidad importante. Citando a DDD:

 > An object that represents a descriptive aspect of the domain that has no conceptual identity is called a
 > VALUE OBJECT. VALUE OBJECTS are instantiated to represent elements of the design that we care about only
 > for what they are, not who they are.
 
- _Servicios_ (ejemplo, un strategy): son objetos que tienen comportamiento importante, estado supeditado al comportamiento y poca o nula identidad. Su función principal es la de operar, asistir o coordinar a otros objetos del dominio y son frecuentemente intercambiables por otros servicios con funcionalidad idéntica o similar. Son elementos que suelen ser más subproductos del modelado orientado a objetos (en el cual utilizaremos técnicas como polimorfismo y composición para lograr mayor extensibilidad), que conceptos que surjan nativamente de nuestras intuiciones del dominio. Como se menciona en DDD:

> Some concepts from the domain aren’t natural to model as objects. Forcing then required domain
> functionality to be assigned as a responsibility of an ENTITY or VALUE either distorts the definition of
> a model based object or adds meaningless artificial objects
> (...)
> The name "service" emphasizes the relationship with other objects. Unlike ENTITIES and VALUE OBJECTS, it
> is defined purely in terms of what it can do for a client. A SERVICE tends to be named for an activity, rather
> than an entity, a "verb" rather than a "noun". A SERVICE can still have an abstract, intentional definition; it
> just has a different flavor than the definition of an object. A SERVICE should still have a defined
> responsibility, and that responsibility and the interface fulfilling it should be defined in terms of the domain
> language.

Ver también [acá](https://martinfowler.com/bliki/EvansClassification.html)

## Popurrí de preguntas de clase

¿Como resolver la persistencia de una relación persistente de una clase persistente?

  - Se puede aplicar mapeos de herencia
      1. **single table**
      2. _joined_
      3. table per class (peor opción)
  - Si la jeraraquía (poco elementos) y sus miembros son statless (sin estado)
     - Se puede convertir a enum y mapearlo como tal
  - Se pueden utilizar técnicas de serialización con @convert (NO LO RECOMENDAMOS)
  - **NO SE PUEDEN** utilizar mapeos embebibles (@Embeddable ni @ElementCollection)

Para responder, analicemos algunas situaciones particulares.

### No hay uso polimórfico

```java
class A implements B, C { }

@Entidad
class E1 {
  @ManyToOne
  A a;
}
```

**Conclusión**: no hay que hacer mapeos polimórficos

### Hay uso polimórfico, pero no es persistente

```java
class A implements B, C { }

@Entidad
class E1 {
  @Transient
  B a;
}
```

**Conclusión**: no hay que hacer mapeos polimórficos


### Hay un solo uso polimórfico


```java
class A implements B, C { }

@Entidad
class E1 {
  @ManyToOne
  B a;
}
```

**Conclusión**: hay que hacer un mapeo polimórfico


### Hay múltiples usos polimórficos

```java
class A implements B, C { }

@Entidad
class E1 {
  @ManyToOne
  B a;
}

@Entidad
class E2 {
  @ManyToOne
  C a;
}
```

**Conclusión**:

 * hay que modificar el modelo, probablemente
 * Es un caso difícil e infrecuente

## ¿Cómo hago para realizar consultas nativas del motor?

Hay que utilizar `entityManager.createNativeQuery`


## ¿Como hacer consultas de tipo reporte de manera eficiente en términos de velocidad de respuesta?

Técnicas complementarias utilizando desnormalización de formas diferentes:

* Opción 1: Guardar los resultados del reporte en la base de datos como una entidad más, y recalcular periodicamente usando un cron (optimizar la velocidad con la que se accede al resultado / evitar el recómputo del resultado)
* Opción 2: Desnormalizar partes de las entidades involucradas en la consulta y hacer el reporte en vivo pero utilizar estos campos desnormalizados (optimizar la velocidad de generación del resultado)


## Material

- [Presentación](https://docs.google.com/presentation/d/13_ofBSZzy0x7uo3FRnn1bk-bQZiQpffhXT2JqmLZVZA)
- Ejemplo de clase:
  - [Fútbol Completo](https://github.com/dds-utn/jpa-proof-of-concept-template/tree/futbol-completo)

## Para la próxima clase

1. Hacer el [Parcial Juego de Tronos](https://docs.google.com/document/d/1Qjgq_KS73UUn8337LEoXi_M28wtgi-EkBuaQ7N-9Ks4/edit#heading=h.tlw7c15gv98x)
  Ver la solución [Solución](https://docs.google.com/document/d/1BzxQmaeqVCkM68UvYwPcO8JwhsCuIZJXjrXAeEogjh8/edit) y traer dudas.
1. [Introducción a Arquitectura Web](https://docs.google.com/document/d/1LBqAhXPzn-aeN5BIRZBmIrU5RKiYvySyWH-2Jkn-kJw/edit#heading=h.kx1xmbyu1do6)
1. [Tutorial HTTP](https://github.com/flbulgarelli/http-tutorial/tree/master/tutorial/es): hasta el punto 8. Hacerlo luego de leer el apunte anterior.

## Y luego...

* Liberaremos el enunciado del TPI4: Juego de Tronos
* Liberamos el enunciado del TPA4
