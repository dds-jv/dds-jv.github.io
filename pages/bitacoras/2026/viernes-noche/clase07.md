---
layout: page
title: Clase 7
description: Viernes (Noche, 2026)
permalink: /bitacoras/2026/viernes-n/clase-07/
---

# Resumen

- Hablamos sobre Reificar comportamiento y cómo implementarlo
- Mencionamos cuestiones sobre sincronismo y asincronismo.
  - Hay diferentes "situaciones" / "sabores" de asincronismo
    - Nos importaba realizar una operación no bloqueante: queríamos iniciar el cómputo sin tener que esperar a que termine. Puede que nos interese (o no) el resultado de esa operación.
    - Nos interesa difere una acción en el tiempo, de forma que no me importe si se realiza ahora o más tarde. Quizás incluso me interese poder cancelar esa operación antes de que se llegue a culminar o incluso poder deshacerlo luego de que se haya aplicado.
    - Nos interesa que una operación no se realice en respuesta a una interacción directa de un actor sino de forma periódica
  - Hay distintas soluciones (no necesariamente incompatibles entre sí) al problema
    - Cosificar el comportamiento <- es lo que tienen/tenían que ver para esta clase
    - Inversión de control / callback <- lo vimos la clase pasada
    - Programar orientado a eventos <- es lo que corresponde a la clase que viene
- También respondimos algunas dudas sobre QMP4. A continuación dejamos el código que fuimos escribiendo.

```java
class Clima {
  ....
}

class GeneradorDeSugerencias {
  ServicioMeteorologico servicioMeteorologico

  Sugerencia generarSugerencia() {
    ....
    servicioMeteorologico.dameClima()
    ....
  }
}

interface ServicioMeteorologico {
  Clima dameClima(lugar)
}

class ServicioMeteorologicoAccuWeather implements ServicioMeteorologico {
  Clima dameClima(lugar) {
    ...hacer llamados http al api de accu weather usando un cliente basado en Retrofit o Jersey...
    ...retornar un objeto clima compatible con esas respuestas....
  }
}

class ServicioMeteorologicoNacional implements ServicioMeteorologico {
  Clima dameClima(lugar) {
    ...hacer llamados http al api de SMN usando un cliente basado en Retrofit o Jersey...
    ...retornar un objeto clima compatible con esas respuestas....
  }
}
```

```java
// solución basada en herencia usando un template method
// 👍
abstract class ServicioMeteorologico {
  Clima dameClima(lugar) {
    if (!el resultado ya está guardado) {
      resultado = this.dameClimaPosta(lugar)
    }
    return resultado
  }

  abstract Clima dameClimaPosta(lugar)
}

// Una solución basada en composición
// 👍
interface ServicioMeteorologico {
  Clima dameClima(lugar)
}
class ServicioMeteorologicoConCache implements ServicioMeteorologico {
  ServicioMeteorologico servicioMeteorologicoPosta

  Clima dameClima(lugar) {
    if (!el resultado ya está guardado) {
      resultado = servicioMeteorologicoPosta.dameClima(lugar)
    }
    return resultado
  }
}

ServicioMeteorologico unServicio = new ServicioMeteorologicoAccuWeather();
unServicio = new ServicioMeteorologicoNacional();
unServicio = new ServicioMeteorologicoConCache(ServicioMeteorologicoNacional());
unServicio = new ServicioMeteorologicoConCache(ServicioMeteorologicoAccuWeather());
unServicio = new ServicioMeteorologicoDeMentira()
unServicio = mock(ServicioMeteorologico.class)

// corolario: al tener un adapter no solamente gano en extensibilidad
// sino también testeabilidad
```
enum Formalidad {
  FORMAL,
  DE_GALA,
  ELEGANTE_SPORT,
  INFORMAL,
  DE_ENTRECASA

}

class Prenda {
  Formalidad formalidad

  getFormalidad() {

  }
}
```


# Material

- [Reificar Comportamiento](https://docs.google.com/document/d/14n6SNTbCt1wJzhNiIFNSoAq0tJdYjRrOQCi5ar_FQ1c/edit#heading=h.6ab0fffv8tld)
- [Patrón Command](http://www.google.com/url?q=http%3A%2F%2Fwww.uml.org.cn%2Fc%2B%2B%2Fpdf%2FDesignPatterns.pdf&sa=D&sntz=1&usg=AFQjCNFD5AGp1QDdoN_pu3TgljJJRqMAMg)
- [Qué Me Pongo: Quinta Iteración](
https://docs.google.com/document/d/1wS622pMwZrDK9ilL_hEt5bBE04vKUKZILx8cIQ-aQzU/edit#heading=h.uyku9mnteh0t)
   -  [Solución Posible](https://docs.google.com/document/d/1Q3HaxGWoxaZHLlvPxNt1cxQdubMIXkPOpcp4_vOO-zM/edit#heading=h.uyku9mnteh0t)
- [Solución en clase](https://gist.github.com/flbulgarelli/3a09fb7450b54ecb696bb74324239cc4)

# Para la próxima clase

### Apuntes y ejercicios

- [Que Me Pongo Sexta Iteración](https://docs.google.com/document/d/1NxqhJj70kt-_4aw-CawlISdJZyedzoOcLAVJAZVZISE/edit): **no** hacer el punto bonus.
- [Patrón Observer](https://docs.google.com/document/d/1h8Cce8faTG65RXoElPvAsPS-I8H2MxMbemzMcYCL56I/edit). Antes de encararlo se recomienda antes leer:
   - El ejercicio de [Listas de Correo](https://docs.google.com/document/d/1o0Bc2Az38ii7YzbsDVX-v8bu3-eBbIdsJqKABMArqv0/edit)
   - La [la solución posible](https://docs.google.com/document/d/1aw8p79d78zos47ommvwZw6fIkHH_Qx_SBfwU3yfJ96k/edit#heading=h.ssrn70io33qo). De esta **se recomienda omitir el apartado sobre decortator**, dado que no es un patrón que trabajemos en la cursada
- [Complementario: Sobre los efectos en el Observer](https://docs.google.com/document/d/1UwTcRLugqDgZuqfWvOxckwk27UBjDo70AF1znzX24QM/edit#heading=h.y04j3mise0wn)
