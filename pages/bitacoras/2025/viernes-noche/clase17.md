---
layout: page
title: Clase 17
description: Viernes (Noche, 2025)
permalink: /bitacoras/2025/viernes-n/clase-17/
---


# Temario

 * Repaso de arquitectura de software:
    * Arquitectura física
    * Arquitectura lógica
 * Arquitectura (conceptual) de Sistemas. Problemas, estrategias y problematización
   * Automatización
   * Etiquetado
   * Datificación
   * Componentización, Compartimentalización
   * Trazabilidad
   * Opacidad


# Resumen

En esta clase y subsiguientes, cambiamos el enfoque para volver a charlar sobre temas de _Arquitectura_, como ya hicimos en las primeras clases del año ([primera clase](./clase01.md)), [tercer clase](./clase03.md). Sin embargo, en esta ocasión profundizamos sobre las cuestiones de la arquitectura física del software y también sobre la arquitectura conceptual del sistemas, es decir, las decisiones más generales sobre qué hace, cómo, cuando y **para quién**.

## Arquitectura física de software, revisada

* Estudiamos como las tecnologías, componentes, relaciones, medios de comunicación tienen injerencia en los componentes de hardware, sus  costos y contexto.
* Repasamos las ideas de arquitecturas monolíticas HTTP y descentralizadas.
* Repasamos su documentación mediante diagramas de despliegue.
* Nos aproximamos a los conceptos de escala, a la complejidad que introduce y al riesgo de implementar soluciones arquitecturales a-priori o descontextualizadas.

Bajo estos ejes analizamos el ejercicio de _EntregasYaYaYa_

## Arquitectura conceptual de los sistemas

Además, discutimos sobre la arquitectura conceptual sistemas (podríamos llamarla también la meta-arquitectura o la supra-arquitectura): lo que condiciona su creación, las lentes bajo las cuales se diseñan los sistemas, sus fines y su impacto en la sociedad, sus relaciones y estructuras de poder.

En particular, trabajamos sobre algunos de los pilares centrales de la construcción de sistemas informáticos, para desmitificarlos o desafiarlos. Utilizamos como guía el libro Feminismo de Datos, que si bien particulariza en cuestiones gestión y análisis de datos, sus conceptos resultan fácilmente extrapolables al diseño general de sistemas, más aún en el estadio actual de la disciplina. Algunos de ellos son o remiten a:

  * Los conceptos de poder, privilegios	y opresión
  * Los conceptos de género, la racialización y nacionalidad
  * El principio de interseccionalidad
  * El marco de trabajo que plantea
  * La desuniversalización del "usuario"

También nos basamos en el libro _Algoritmos de Opresión_ de Safiya Noble, que plantea que problemas no son meros accidentes o anomalías sino parte de su diseño, guiado por los sesgos de quienes lo diseñan, de las relaciones de poder preexistentes de las sociedades en que se crean y de los privilegios de las personas que comandan las organizaciones que los financian. Esto no busca desligar responsabilidades, sino al contrario, analizarlas para poder combatir estas problemáticas de forma efectiva.

Bajo estos ejes (y los algunas de las cualidades de diseño que ya presentamos al inicio del año, como sobernía digital, humanización, protección de datos personales, inclusión) analizamos _AF Analytics_.

# Material

- [Arquitecturas Concurrentes, Episodio 1: El diablo está en los detalles](https://medium.com/arquitecturas-concurrentes/arquitecturas-concurrentes-episodio-1-el-diablo-est%C3%A1-en-los-detalles-692766ac669b)
- [La introducción](https://data-feminism.mitpress.mit.edu/pub/v874jd7x/release/1) y el [capítulo sobre el poder](https://data-feminism.mitpress.mit.edu/pub/bchsq3az/release/1) del libro _Feminismo de Datos_, con consideraciones necesarias sobre los sistemas que recopilan, generan y analizan datos.
- [Guía de ejercicios de Arquitectura](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit?usp=sharing). Trabajaremos con **EntregaYaYaYa** y **A.F. Analytics**
  - [Soluciones](https://docs.google.com/document/d/1zQPyGbnyKMsMNedsSnFWLobyGUUU2KTuGOyoPIsvnSw/edit#heading=h.o8eoqhxo0gxt) (No verlas sin intentar resolver el ejercicio antes)
- [Presentación de la clase](https://docs.google.com/presentation/d/1dFweT7Jg4CwG2pwUuzsPiopA1p-bkVX9QlwkCySuizU/edit)
- [Cualidades de diseño](https://docs.google.com/document/d/1GBSnQbdEaSAP-2sgdZof4tb4nOydzeb2LmzqGAKJpxk/edit?tab=t.0) (de nuevo)
- **Complementario**: [Comunicación de decisiones arquitectónicas]({{site.baseurl}}/attachments/ComunicandoDecisionesArquitectonicas.pdf)
- **Complementario**: [Introducción a arquitectura](https://docs.google.com/document/d/1XaKMrWPA0jntDK29gtEDRw-CoQgWXfHOmdbmihg4MpE/edit#heading=h.z9jwy1eurzt9) (de nuevo, si no lo habías leído ya)

# Para la próxima clase

- [Guía de ejercicios de Arquitectura](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit?usp=sharing).
- [Listado de componentes arquitectónicos comunes](https://docs.google.com/document/d/1LWr7tDy47qFQt8Y1XOGFWCra9NQkugqsSxSPt9QMiKs/edit#heading=h.n9ul1ib5i4m)
    - Leer sobre todo el apartado sobre _balanceo de carga HTTP_
- Las lecturas anteriores, si no las leíste antes.
