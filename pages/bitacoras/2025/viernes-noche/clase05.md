---
layout: page
title: Clase 5
description: Viernes (Noche, 2025)
permalink: /bitacoras/2025/viernes-n/clase-05/
---


# Resumen

- Abordamos el concepto de _Inversion de Control_.
- Nos introdujimos a la _Inyección de dependencias_.
- Discutimos sobre: _Refactor_ y _Manejo del Cambio_
- Vimos cómo hacer refactors en vivo ayudándonos con un IDE


# Ejemplos de código

A continuación dejamos algunos ejemplos vistos en clase:

## Inyección de dependencias

```js
// la forma de obtener dependencias con control directo
class FuenteEstatica {
  lectorDeCsvs

  constructor() {
    this.lectorDeCsvs = new LectorDeCsvs()
  }
}

fuente = new FuenteEstatica()
fuente = new FuenteEstatica() // MALDICION! NO PUEDO CAMBIARLO


// alternativa a medio camino: service locator
class FuenteEstatica {
  lectorDeCsvs

  constructor() {
    this.lectorDeCsvs = ServiceLocator.INSTANCE.getLectorDeCSVs()
  }
}

ServiceLocator.INSTANCE.setLectorDeCSV(new LectorDeCsvs())
fuente = new FuenteEstatica()


ServiceLocator.INSTANCE.setLectorDeCSV(lectorDeCSVSoloParaElTest)
fuente = new FuenteEstatica()



// alternativa con inyección de dependencias
class FuenteEstatica {
  lectorDeCsvs

  constructor(lectorDeCsvs) {
    this.lectorDeCsvs = lectorDeCsvs
  }
}


//fuente = new FuenteEstatica(new LectorDeCsvs())
fuente = new FuenteEstatica(lectorDeCSVSoloParaElTest)

fuente = new FuenteEstatica(LectorDeCsvs.getInstance())
```

## Singleton

```java
class LectorDeCSV {
  public static LectorDeCSV INSTANCE = new LectorDeCSV();
}
```

## Code smells

Los code smells son simplemente heurísticas. No dicen taxativamente si algo es correcto o incorrecto.

```js
// Message chain (cadena de envío de mensajes)
// ¿Esto está mal? ¡Habría que analizarlo!
objeto
  .mensaje()
  .otroMensaje()
  .otroMensajeMas()

// Quizás podemos delegarlo:
objeto.unMensajeMasInteresante()

// O quizás es aceptable
// Por ejemplo, podría el API de streams de java
// nos fuerza a escribir el código de esa forma
objeto
  .stream()
  .fitler()
  .map()
  .toList()
```

# Material

- [Presentación](https://docs.google.com/presentation/d/1Y53o0lifOgAMsdTTg9v4BSR94Pnf-K44mqz1rOy8oU4/edit#slide=id.g82d3d5330f_0_705)
- [Manejo del cambio: Expansión y refactoring](https://docs.google.com/document/d/1cAje0qwy3Cus_ob0r-tatbcT01sDFeLt3MmSVmLeSxk/edit?usp=sharing)
- Deuda técnica:
   - [Concepto de deuda técnica](https://www.youtube.com/watch?v=OfIYiyg1op8&t=400s)
   - [Una crítica al concepto de deuda técnica](https://www.youtube.com/watch?v=DvfMOJaIzhY)
- [Biblioteca vs. Framework](https://docs.google.com/document/d/1D_MCoh4J8kL1MAKNlbDgAMu2nYxri-81nZBYOPFWnO0/edit#heading=h.6ab0fffv8tld)
- [Introducción a la inyección de dependencias](https://docs.google.com/document/d/1GsW-hVF0XR76KunDILqkltyE1KIBvj3ldCCkyStjne0/edit?usp=sharing)
- [Ejemplos Code Smells](https://docs.google.com/document/d/1N-ZFQqcmge7TozZ1zOcW1tbFrn9IFEJm91X8MFGysik/edit?usp=sharing)
- [Enunciado de Monedero](https://github.com/dds-utn/dds-monedero-java8)
    - [Soluciones posibles](https://github.com/dds-utn/dds-monedero-java8/branches/all)
- Complementario: [QMP 3](https://docs.google.com/document/d/1XGb_Xt2v3viZY4RNky6zguL-ATv1iqEzHWhK4a6vsIk/edit)
    - [Pseudocódigo de QMP3](https://drive.google.com/file/d/1wRcRZSLDspmMMTtWlfB5c8P85moKgnQp/view?usp=sharing)
    - [Soluciones posibles](https://docs.google.com/document/d/1eMm7sRyyi-PJ8YFt0Ro2ecxfHBC6WJBlui7x21rFA2Q/edit#heading=h.uyku9mnteh0t)


# Tarea

- Lectura: [Diseño de Interfaces Entrantes y Salientes](https://docs.google.com/document/d/1LurA-bCEHhCsIPFiFg1rqfIdfe5SdS4wBePfG45nDqg/edit#)
   - _Complementario: [Video sobre testing de interfaces externas](https://www.youtube.com/watch?v=-p7_NUDLRB0&index=1&list=PLTpxfh7PF3OpJSMNNPaYxLJii3Xm7PPA_)_
- Lectura: Patrón Adapter del Libro de Gamma (ver nota en el formulario de seguimiento)
- Lectura: [Testing (incluye Impostores y testing en JUnit)]({{site.baseurl}}/apuntes/validacion)
   - _Complementario: [Mocks aren't Stubs](https://martinfowler.com/articles/mocksArentStubs.html)_
- Lectura: Ingeniería de Software, Ian Sommerville, Ética en la ingeniería de software (sección 1.2, páginas 14 a 19)
   - [Enlace en Academia.edu](https://www.academia.edu/25063155/Ingenieria_de_Software_Somerville) (el cual refiere a su vez al [Código de conducta de ACM](https://ethics.acm.org/code-of-ethics/software-engineering-code/))
   - Complementario: [Ethics: Why Software Engineers Can’t Afford to Look Away](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10372461&tag=1)
- Ejercicio: [Qué Me Pongo: Cuarta Iteración](https://docs.google.com/document/d/1sy9S9EeIQr8fhatKnfTCgOfjVniJDu2viI-Av0gn0xY/edit)
