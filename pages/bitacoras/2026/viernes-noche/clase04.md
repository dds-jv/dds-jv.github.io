---
layout: page
title: Clase 4
description: Viernes (Noche, 2026)
permalink: /bitacoras/2026/viernes-n/clase-04/
---

# Temario

 * Manejo de errores y validaciones.
 * Arquitectura web monolítica (continuación). Repaso del modelo cliente-servidor. Recursos y competencia de recursos.
 * Arquitectura web distribuida: servicios, servicios externos y microservicios. Problemas, oportunidades y riesgos. Protocolos de comunicación y estrategias de integración.

# Resumen

## Repaso de materiales previos

Canalizamos las dudas sobre los materiales de las clases pasadas

* Video: Puesta en común Macowins
* Video y apunte: Patrones de diseño
* Video y apunte: Cualidades de diseño
* Video: Strategy y Template
* Ejercicio QMP Primera iteración

Dejamos también algunas [preguntas y respuestas frecuentes al ejercicios del TPI0 Macowins](https://docs.google.com/document/d/1n8E840G1e86kof_xC98iWdwNNpWocV5_2YEKfJTgdGc/edit?tab=t.yuedzue8zudx)

Por último, conversamos sobre para que nos sirvió Macowins y QMP1, y cómo utilizaremos las próximas entregas de QMP. Comentamos que es importante leer siempre los ejercicios, intentar resolverlos, luego leer la resolución y ver videos de puesta en común (si los hubiera). No ver las soluciones sin intentar resolver el ejercicio antes.

## Manejo de Errores y validaciones

Discutimos sobre el manejo de errores y la importancia de realizar validaciones :

 * Conversamos sobre los ejes fundamentales del manejo del error: no ocultarlo, propagarlo ordenadamente yt tratarlo solo cuando sabemos cómo hacerlo.
 * Ideas clave sobre cuándo, dónde y por qué fallar: fail fast, regiones de confianza (estrategia del panal de abeja) y el mantenimiento de consistencia como norte.
 * Comparamos distintos mecanismos de manejo de errores: impresión por pantalla, logging, retorno de valores y **lanzamiento de excepciones**. Estudiamos en particular el último y por qué es nuestra primera (y muchas veces, única) opción.

Por último, destacamos que el foco de los apuntes está puesto en los errores dentro del dominio, pero las ideas son extrapolables también a la arquitectura física y lógica.

## Arquitectura física, lógica y servicios

Durante la clase pasada presentamos la arquitectura **cliente-servidor** y contamos que la variante Web es la más extendida en el 2026, la cual se caracteriza por el uso de:

 * de internet o intranet como red de comunicación;
 * de HTTP (y derivados como HTTPS) como protocolo de comunicación;
 * de navegadores (en inglés, _browsers_) como principal (pero no exclusivo) software cliente;
 * de lenguajes y tecnologías _vinculadas_ a los navegadores (HTML, CSS, JS, WebSockets, DOM, XML/JSON, XmlHTTPRequest/Ajax, LocalStorage, CORS, etc) o protocolos que se basan en HTTP (REST, GraphQL, gRPC, OAuth, etc)

En esta sección repasamos y profundizamos estas ideas, para luego estudiar la división de la arquitectura física en servicios:

 1. La variante de Web que vimos (la que se estudia en DDSo) se llama monolítica (en esta materia se estudia en particular Web Monolítica Cliente Liviano mientras que en DDSo se estudia Web Monolítica Cliente Pesado)
 2. Pero ~muchas~ algunas veces nos queda corta: hay que distribuir
   1. Base de datos: la competencia de recursos nos obliga a separar la base y llevarla a un nodo aparte. Irónicamente lo seguiremos considerando una arquitectura web monolítica 😅
   2. Servicios adicionales: a veces separaciones lógicas llevan a separaciones físicas.
 3. Separar en servicios:
   1. implica separa el dominio (N dominios)
   2. No siempre es necesario.
   3. Muchas veces obedece más a una cuestión política, comercial y organizacional que de _escalabilidad_ (ver apunte de cualidades; no confundir con _mantenibilidad_).
   4. Requiere coordinación: se necesita un _orquestador_ (en principio, en su forma mas simple)
   5. A veces distribuir es una opción, otras veces es una obligación, porque no tenemos control de esos servicios. (Paréntesis: **control** es un término al que volveremos mucho en la materia)
 4. Distinguimos servicios externos, internos y dentro de éstos últimos, microservicios. Mencionamos sus características.
 5. Mencionamos las estrategias de integración entre servicios
    1. los mismos protocolos de la Web (HTTP & cia; se aprovecha la omnipresencia). APIs REST (a profundizar en segundo cuatrimestre).
    2. Otros protocolos y componentes.
 6. Conversamos sobre riesgos de los servicios externos, tales como el _vendor locking_, la pérdida de soberanía tecnológica, la (des)protección de datos personales, etc.

Cerramos resignificando la importancia del manejo de errores en una arquitectura (web) distribuida.


# Material

- [Presentación](https://docs.google.com/presentation/d/1sfyvIZtjboILlFea3dYKWW2Aau9p3qvuFpy9BZW97D4/edit?slide=id.g2cbc2124947_0_83#slide=id.g2cbc2124947_0_83)
- [Solución explicada a QMP Primera Iteración](https://docs.google.com/document/d/1ayrs5-vrGsXgZKDob-f5_0fmhCYXf7-ty5Be6NXITRY/edit#heading=h.uyku9mnteh0t)
- [Diseño del Manejo de Errores](https://docs.google.com/document/d/1u7t9eKDdAVwhQVAkstV0nkfAGIJsY2O_UEHKJJVje6c/edit#)
	- _Complementario_: [Excepciones en Java](https://docs.google.com/document/d/1G0a9j-OA0rIEA5cdvEhIMbztJVo86ssvZKBK8HL9akg/edit)


# Tarea

* [Ejercicio: Qué Me Pongo - Segunda Iteración](https://docs.google.com/document/d/10j6XB9zIhl5xox2xBEDEFsgPmueHMkyvLSHcLxl_27Y/edit#heading=h.uyku9mnteh0t)
* Leer y ver video: Diseño de manejos de errores y Excepciones en Java (en el campus, si no lo hiciste)
- 👓 **Obligatorio**: Leer [Manejo del cambio: Expansión y refactoring](https://docs.google.com/document/d/1cAje0qwy3Cus_ob0r-tatbcT01sDFeLt3MmSVmLeSxk/edit?usp=sharing)
- 👓 **Obligatorio**: Leer [Introducción a la inyección de dependencias](https://docs.google.com/document/d/1GsW-hVF0XR76KunDILqkltyE1KIBvj3ldCCkyStjne0/edit?usp=sharing)
- 👓 Deseable: Leer [Biblioteca vs. Framework](https://docs.google.com/document/d/1D_MCoh4J8kL1MAKNlbDgAMu2nYxri-81nZBYOPFWnO0/edit#heading=h.6ab0fffv8tld)
- 🖨️ Deseable: Tener a mano los [Ejemplos de Code Smells](https://docs.google.com/document/d/1N-ZFQqcmge7TozZ1zOcW1tbFrn9IFEJm91X8MFGysik/edit?usp=sharing)
- ⌨️ **Obligatorio**: Hacer el [ejercicio Monedero](https://github.com/dds-utn/dds-monedero-java8)
- 🎥 **Obligatorio**: Ver estos dos videos sobre deuda técnica:
   - [Concepto de deuda técnica](https://www.youtube.com/watch?v=OfIYiyg1op8&t=400s) (6:40 a 9:00, aunque toda la entrevista es interesante)
   - [Una crítica al concepto de deuda técnica](https://www.youtube.com/watch?v=DvfMOJaIzhY)
- 👓 **Obligatorio**: Leer [Design for accountability](https://www.researchgate.net/publication/221248162_Designing_for_accountability)
