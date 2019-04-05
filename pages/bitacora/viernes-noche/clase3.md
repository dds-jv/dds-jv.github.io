---
layout: page
title: Clase 3
description: Viernes (Noche, 2019)
permalink: /bitacora/viernes-n/clase-3/
---
**¡Hola!**

Recordá tener presente lo visto en la [clase anterior]({{site.baseurl}}/bitacora/viernes-n/clase-2), particularmente el documento que habla sobre _manejo de errores_ y consultarnos cualquier duda que tengas.

> Si cursás en el K3053 y no sos _oyente_, recordá que hoy estaremos en **Medrano**. En otro caso, deberás asistir al aula S10.

Mañana, sábado 6/4 a las 9:00 o 14:00 (pueden ir en cualquier horario), habrá un taller introductorio vinculado a _Java_, _Maven_ y _Git_. La asistencia es opcional, aunque es muy recomendado para quienes trabajado poco o nada con éstas tecnologías.

- Apuntes que deberían tener leídos para el taller: 
  - Apunte de [Java](https://goo.gl/ioY8cc).
  - Apunte de [Maven](https://goo.gl/FAFyRe).
  - Apunte de [GIT](https://goo.gl/cwjcYB).
- En cuanto a práctica, se trabajará en torno al ejercicio de [Macowins](https://goo.gl/tSWzi4).
- Requiere inscripción previa, que podés hacer entrando [aquí](https://goo.gl/TtSvD1).


# Resumen

- Nos introduciremos en los _Patrones de Diseño_.
- Conoceremos a los Patrones Creacionales, que nos brindarán buenas prácticas a casos frecuentes de creación de instancias.
  - Patrón _Builder_.
  - Patrón _Singleton_.
- Descubriremos porqué no es lo mismo decir _instanciación_ que _configuración_.
- Hablaremos sobre _Inyección de Dependencias_ y como favorecer la inmutabilidad, manteniendo así el principio _fail-fast_.

# Apuntes

- [Patrones Creacionales](https://docs.google.com/document/d/193WbUewu9RvK8Nv9orpxSoXeVA3R5Az1uYHhg8NRMtQ/edit#heading=h.6ya5si9ipi77).
  - _Complementario: [Singleton](https://sourcemaking.com/design_patterns/singleton)_
  - _Opcional: Otro apunte sobre [Patrones Creacionales](https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnx1dG5kZXNpZ258Z3g6MjFiNjAzMmU4NGFkM2I4)_
- [Inyección de Dependencias](https://docs.google.com/document/d/1GsW-hVF0XR76KunDILqkltyE1KIBvj3ldCCkyStjne0/edit#heading=h.niaj9skgl3x9)

<!---
# Ejercicio

Trabajaremos con el siguiente ejercicio (¡accedé al [repositorio](https://github.com/dds-utn/computers)!):

> En un Negocio de Tecnología dejan construir a los clientes las PCs a partir de los diferentes componentes. Solo se venden PCs armadas completas y funcionales.
> Hay componentes mínimos para hacer andar una PC y otros que son opcionales
> - Requeridos: Motherboard, Fuente, Disco de Almacenamiento
> - Opcionales: Placa de Video, Teclado, Mouse, Monitor, Disco SSD.
>
> Tener en cuenta la restricción de que las Placas de Video nVidia funcionan solo con microprocesadores Intel y las placas de video AMD funcionan solo con microprocesadores AMD.
> Una vez finalizado hay que saber el precio del componente que es igual a la sumatoria de precios de los componentes.
-->
