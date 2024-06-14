---
layout: page
title: Clase 8
description: Viernes (Noche, 2024)
permalink: /bitacoras/2024/viernes-n/clase-08/
---

> _¡Hola todo el mundo!_
>
> Dr Nick

## Resumen

En esta clase aprendimos sobre la noción de eventos para comunicar cosas que ocurren en nuestro sistema a otros objetos, sin acoplarnos a lo que hacen, pero ganando en flexibilidad de que se puedan suscribir otros interesados:

Trabajamos sobre conceptos tales como: 

  * evento: cualquier cosa que _acontece_ (sí, es una definición muy genérica)
  * sujeto observable (o _simplemente_, sujeto, o simplemente _observable_): aquel _ente_ que es la fuente de eventos y es capaz de producir notificacionesa
  * notifación: el mensaje que se envía desde el sujeto observable a un observador, ante la ocurrencia de un cierto evento
  * observador: el ente interesando en los eventos de un _sujeto observable_
  * suscripción: el acto por el cual el _observador_ expresa su interés en (uno o alguno de) los _eventos_ que le suceden al _observable_.
  * acción: aquello que un observador realiza ante la ocurrencia de un evento para el que está suscripto
Comentamos que, dependiendo de la tecnología, la literatura y la implementación de esta noción, existen muchos sinónimos para algunos de estos conceptos: 

  * `listener`, `subscriber` (suscriptor) como sinónimos de `observer` (observador)
  * `listen`,`subscribe`, `register`, todos verbos que funcionan como cuasi-sinónimos de la acción de crear una suscripción
  * _reacción_: dado que las acciones de las que hablamos son en respuesta a un evento, es común referirlas como _reacciones_ (de donde viene un sinónimo del diseño orientado a eventos: el diseño _reactivo_)


Dado que virtualmente cualquier operación en un sistema puede ser pensada como un evento, nos resulta útil acotar su uso a ciertos escenarios en que: 

  * existan múltiples potenciales formas de reaccionar ante esos eventos
  * en que esta o estas potenciales formas de reaccionar sean configurables en tiempo de ejecución (es decir, que en un instante <code>t<sub>0</sub></code> se reaccione de una forma, y en otro instante <code>t<sub>1</sub></code> se reemplace esa forma de reaccionar por otra, o incluso se ignore el evento)
  * pueda existir, al mismo tiempo, más de una forma de reaccionar, ocasionando que un evento desencadene cero o más acciones
  * que las acciones sean mayormente independientes entre sí (esto se estudiará en mas detalle en la siguiente clase)
  * en suma, que no exista un vínculo rígido entre los eventos y sus reacciones (o lo que es casi lo mismo, entre los observables y sus observadores) y que por tanto, busquemos desacoplar los primeros de los segundos. 

Luego, trabajamos en particular una posible implementación de la noción de eventos en la programación con objetos: el patrón _observer_. En este patrón: 

  * el observable notifica uno o más tipos de eventos diferentes
  * estos eventos podrían notificarse muchas veces, una vez, o incluso ninguna
  * el _observable_ se caracteriza por exponer mensajes que permiten la suscripción de observadores, que típicamente siguen algún patrón de nombres del estilo:
     * `agregarSuscriptor` / `agregarObservador`

Además recuperamos la idea de _Repositorios_, objetos globales que nos permiten conocer todas las instancias de cierto tipo, generando un objeto cohesivo responsable de esa tarea.


## Material utilizado

- [Presentación utilizada](https://docs.google.com/presentation/d/1KwoYTdJA4_RLL_VTH5KcwOZGST9V3XAt_hkckzUJD94/edit)
- [Apunte sobre el patrón Observer, caso práctico](https://docs.google.com/document/d/1h8Cce8faTG65RXoElPvAsPS-I8H2MxMbemzMcYCL56I/edit). Recordar que para aprovecharlo mejor se recomienda leer:
   - El ejercicio de [Listas de Correo](https://docs.google.com/document/d/1o0Bc2Az38ii7YzbsDVX-v8bu3-eBbIdsJqKABMArqv0/edit)
   - La [la solución posible](https://docs.google.com/document/d/1aw8p79d78zos47ommvwZw6fIkHH_Qx_SBfwU3yfJ96k/edit#heading=h.ssrn70io33qo). De esta **se recomienda omitir el apartado sobre decortator**, dado que no es un patrón que trabajemos en la cursada
- [Sobre los efectos del Observer](https://docs.google.com/document/d/1UwTcRLugqDgZuqfWvOxckwk27UBjDo70AF1znzX24QM/edit#heading=h.y04j3mise0wn)


## Práctica

- Estuvimos trabajando con el ejercicio de [Qué Me Pongo - Sexta iteración](https://docs.google.com/document/d/1NxqhJj70kt-_4aw-CawlISdJZyedzoOcLAVJAZVZISE)
- Hicimos esta [puesta en común](https://drive.google.com/file/d/1JPWEYqw0a_ylqq2zF3zLa2SscGqPFPGg/view?usp=sharing)

## Material complementario

- [Patrones de Diseño](https://www.utnianos.com.ar/foro/attachment.php?aid=3577)
- Observer, página 269

## Para la próxima clase 📅

- [Que Me Pongo Sexta Iteración](https://docs.google.com/document/d/1NxqhJj70kt-_4aw-CawlISdJZyedzoOcLAVJAZVZISE/edit): Ahora sí, **hacer el punto bonus**.
- [Patrones de comunicación](https://docs.google.com/document/d/1EVPwqFyq2TW5Z5_VUeWdh9yLesxPBbSBzke2jHNURuk/edit)
-  [Diseño y metodologías de desarrollo](https://docs.google.com/document/d/11PQO8NPSOV4SW0ZwtFsh4RCtWubuEBV6E5qPicqJNKs/edit)
  - Leer secciones 1, 2, 3, 4.1 y 4.4
- Continuaremos trabajando sobre eventos y observer, por lo que si no hiciste el ejercicio de QMP o leíste los apuntes, te los dejamos nuevamente:
  - [Patrón Observer](https://docs.google.com/document/d/1h8Cce8faTG65RXoElPvAsPS-I8H2MxMbemzMcYCL56I/edit)
  - [Complementario: Sobre los efectos en el Observer](https://docs.google.com/document/d/1UwTcRLugqDgZuqfWvOxckwk27UBjDo70AF1znzX24QM/edit#heading=h.y04j3mise0wn)
