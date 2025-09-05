---
layout: page
title: Clase 18
description: Viernes (Noche, 2025)
permalink: /bitacoras/2025/viernes-n/clase-18/
---

# Resumen

En esta clase y subsiguientes, vamos a cambiar un poco el enfoque para empezar a charlar sobre temas de _Arquitectura_. Entendiendo cómo diseño de arquitectura, el diseño (y sus decisiones) de lo más importante. Es decir sus componentes, relaciones, comunicaciones y cómo tiene injerencia, no solo en las piezas de software sino en los componentes de hardware, tecnologías, costos y contexto.

En particular, presentaremos una arquitectura monolítica HTTP. Estudiaremos su documentación mediante diagramas de despliegue y algunas de las decisiones con las que nos toparemos. Para posibilitar su escala horizontal, introduciremos el concepto de un **balanceador de carga**: un dispositivo de Hardware o Software especializado que permite distribuir la carga de trabajo a los diferentes nodos a partir de un algoritmo. Haremos una demostración utilizando `nginx`.

Además, discutiremos sobre las implicancias de la arquitectura de sistemas: tanto su impacto en la sociedad como la forma en que las relaciones sociales y de poder impactan en su arquitectura.

# Material


- [Presentación de la clase](https://docs.google.com/presentation/d/1dFweT7Jg4CwG2pwUuzsPiopA1p-bkVX9QlwkCySuizU/edit)
- [Listado de componentes arquitectónicos comunes](https://docs.google.com/document/d/1LWr7tDy47qFQt8Y1XOGFWCra9NQkugqsSxSPt9QMiKs/edit#heading=h.n9ul1ib5i4m)
- [Demo de nginx](https://github.com/flbulgarelli/nginx-sample)
- [Guía de ejercicios de Arquitectura](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit?usp=sharing). Trabajaremos con **EntregaYaYaYa** y **A.F. Analytics** y comenzaremos a encarar **Rekomendashi, Fase 2**
  - [Soluciones](https://docs.google.com/document/d/1zQPyGbnyKMsMNedsSnFWLobyGUUU2KTuGOyoPIsvnSw/edit#heading=h.o8eoqhxo0gxt) (No verlas sin intentar resolver el ejercicio antes)

- **Complementario**: [Comunicación de decisiones arquitectónicas]({{site.baseurl}}/attachments/ComunicandoDecisionesArquitectonicas.pdf)
- **Complementario**: [Introducción a arquitectura](https://docs.google.com/document/d/1XaKMrWPA0jntDK29gtEDRw-CoQgWXfHOmdbmihg4MpE/edit#heading=h.z9jwy1eurzt9)

# Para la próxima clase

- [Guía de ejercicios de Arquitectura](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit?usp=sharing).
    - Releer **Rekomendashi** y sus soluciones propuestas
    - Leer **Shera Enterprise** y **Cyberfriday**; ¡no veas aún sus soluciones! Las trabajaremos en clase.
- [Listado de componentes arquitectónicos comunes](https://docs.google.com/document/d/1LWr7tDy47qFQt8Y1XOGFWCra9NQkugqsSxSPt9QMiKs/edit#heading=h.n9ul1ib5i4m)
    - Leer el apartado sobre _balanceo de carga HTTP_
- Las lecturas anteriores, si no las leíste antes.
