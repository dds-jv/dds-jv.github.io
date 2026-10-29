---
layout: page
title: Clase 20
description: Viernes (Noche, 2026)
permalink: /bitacoras/2026/viernes-n/clase-20/
---

# Temario

* Balanceo de carga.
* Microservicios.

# Resumen

En esta clase, presentaremos una arquitectura monolítica HTTP. Estudiaremos su documentación mediante diagramas de despliegue y algunas de las decisiones con las que nos toparemos. Para posibilitar su escala horizontal, introduciremos el concepto de un **balanceador de carga**: un dispositivo de Hardware o Software especializado que permite distribuir la carga de trabajo a los diferentes nodos a partir de un algoritmo. Haremos una demostración utilizando `nginx`.

Además, vamos a presentar la idea de **microservicios**, un enfoque para desarrollar una sola aplicación como un conjunto de "pequeños" servicios, donde cada uno se ejecuta en su propio proceso. Los mismos pueden (o no) estar escritos en diferentes lenguajes, comunicarse entre sí (por ejemplo, por medio de una API HTTP) y persistir su propios conjunto de datos.
Es importante remarcar que no solo implica una forma de diseño diferente (en comparación con un monolito), sino que en líneas generales plantea un cambio a nivel organización del equipo.

Para introducir estos conceptos vamos a estar trabajando con los ejercicios de **Rekomendashi, Fase 2** y **SheRa Enterprise**.


# Material

- [Presentación de la clase](https://docs.google.com/presentation/d/1dFweT7Jg4CwG2pwUuzsPiopA1p-bkVX9QlwkCySuizU/edit)
- [Presentación: De un nodo a muchos · Load Balancing](https://gastonprieto.github.io/presentacion-load-balancer/)
- [Presentación: Microservicios](https://gastonprieto.github.io/presentacion-microservicios/)
- [Listado de componentes arquitectónicos comunes](https://docs.google.com/document/d/1LWr7tDy47qFQt8Y1XOGFWCra9NQkugqsSxSPt9QMiKs/edit#heading=h.n9ul1ib5i4m)
- [Demo de nginx](https://github.com/flbulgarelli/nginx-sample)
- [Guía de ejercicios de Arquitectura](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit?usp=sharing). Trabajaremos con **Rekomendashi, Fase 2** y **SheRa Enterprise**
  - [Soluciones](https://docs.google.com/document/d/1zQPyGbnyKMsMNedsSnFWLobyGUUU2KTuGOyoPIsvnSw/edit#heading=h.o8eoqhxo0gxt) (No verlas sin intentar resolver el ejercicio antes)

# Para la próxima clase

- [Guía de ejercicios de Arquitectura](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit?usp=sharing).
    - Releer **Rekomendashi** y **SheRa Enterprise** y sus soluciones propuestas
    - Leer **Cyberfriday**; ¡no veas aún su solución! La trabajaremos en clase.
- [Listado de componentes arquitectónicos comunes](https://docs.google.com/document/d/1LWr7tDy47qFQt8Y1XOGFWCra9NQkugqsSxSPt9QMiKs/edit#heading=h.n9ul1ib5i4m)
    - Leer el apartado sobre _balanceo de carga HTTP_
- Las lecturas anteriores, si no las leíste antes.
