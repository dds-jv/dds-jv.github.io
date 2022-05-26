---
layout: page
title: Clase 5
description: Jueves (Mañana, 2022)
permalink: /bitacoras/2022/jueves-m/clase-05/
---
**¡Hola!**

## Material utilizado

- [Video](https://youtu.be/iCW2TLQyc4I)
- [Presentación](https://docs.google.com/presentation/d/17l3LSJA81DnRsrtMKi4SgtU4dNhuEIQtF9CH9F_8uSU/edit?usp=sharing)

## Resumen

En esta clase estuvimos analizando algunos Code smells (o indicios que denotan que puede haber un problema de diseño detrás) y refactoring.

Para hacer el refactor, nos apoyamos en algunas de las herramientas que nos provee el IDE (como fue renombrar clases asegurando la consistencia, algo que usando un editor de texto más limitado tendríamos que controlar a mano).

Fuimos teniendo en cuenta algunas cuestiones comunes a cualquier refactor:

- no hacer todo el refactor de una, sino que ir haciendo commits pequeños
- después de cada cambio en el diseño, correr los tests para validar que los resultados obtenidos no hayan variado

Además, vimos por qué el testing es importante: no sólo nos permite validar que nuestro código se adecúe a los requerimientos, sino que son una base clave para poder hacer cualquier refactor (estando seguros de que no rompimos nada).

Además hablamos de herramientas que nos sirven para detectar problemas en nuestro código y como organizarnos cuando estamos manejando un proyecto.

Estuvimos viendo las herramientas que nos sirven para reutilizar comportamientos entre distintos proyectos, por ejemplo con bibliotecas o frameworks. Hablamos de que cuando usamos un framework hay inversión de control, ya que le cedemos el control a ellos _(don't call us, we'll call you)_.

## Material

- [Manejo del cambio: Expansión y refactoring](https://docs.google.com/document/d/1cAje0qwy3Cus_ob0r-tatbcT01sDFeLt3MmSVmLeSxk/edit?usp=sharing)
- [Biblioteca vs. Framework](https://docs.google.com/document/d/1D_MCoh4J8kL1MAKNlbDgAMu2nYxri-81nZBYOPFWnO0/edit#heading=h.6ab0fffv8tld)
- [Cobertura - CI - TDD](https://docs.google.com/document/d/11mVR-4wEZhlQMDEqrfQeYLypEsrSqXv98dr78SA0Oq4/edit#heading=h.l56kk55d8zve)
- [Ejemplos Code Smells](https://docs.google.com/document/d/1N-ZFQqcmge7TozZ1zOcW1tbFrn9IFEJm91X8MFGysik/edit?usp=sharing)
- [Ejercicio Monedero](https://github.com/dds-utn/dds-monedero-java8)
- [Testing - Para repasar](https://docs.google.com/document/d/11mVR-4wEZhlQMDEqrfQeYLypEsrSqXv98dr78SA0Oq4)

De manera adicional, agregamos un articulo de Martin Fowler sobre [deuda ténica](https://martinfowler.com/bliki/TechnicalDebt.html)

## Para la próxima clase

- Apuntes para leer
  - [Introducción a la inyección de dependencias](https://docs.google.com/document/d/1GsW-hVF0XR76KunDILqkltyE1KIBvj3ldCCkyStjne0/edit?usp=sharing) *Ya estaba en los de la clase anterior* 😎
  - [Diseño de interfaces entrantes/salientes](https://docs.google.com/document/d/1LurA-bCEHhCsIPFiFg1rqfIdfe5SdS4wBePfG45nDqg)
  - [Impostores](https://docs.google.com/document/d/11mVR-4wEZhlQMDEqrfQeYLypEsrSqXv98dr78SA0Oq4/edit#heading=h.5bqwe0zgcgud)
  - [Formulario de entrega](https://docs.google.com/forms/d/e/1FAIpQLSf25adlwVJKxJkMNgZSpfJQFUkcT1SHaUZ_3AONaJzRxKQbZQ/viewform)

- Para entregar
  - [QMP - Iteración 4](https://docs.google.com/document/d/1sy9S9EeIQr8fhatKnfTCgOfjVniJDu2viI-Av0gn0xY)
  - [Formulario de entrega](https://docs.google.com/forms/d/e/1FAIpQLSdv1Zwr97A6PKiQ5RZJC0L6GmaE2UEzqk5ayJuByMH9TdIJjg/viewform)