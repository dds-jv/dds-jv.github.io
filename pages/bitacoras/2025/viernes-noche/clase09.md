---
layout: page
title: Clase 9
description: Viernes (Noche, 2025)
permalink: /bitacoras/2025/viernes-n/clase-09/
---


## Resumen

En esta clase repasamos la noción de eventos para comunicar cosas que ocurren en nuestro sistema a otros objetos, sin acoplarnos a lo que hacen, pero ganando en flexibilidad de que se puedan suscribir otros interesados.

Además, introducimos el concepto de patrones de comunicación entre componentes, entre los que aparecerán viejos conocidos junto a nuestro nuevo concepto de eventos.

Finalmente, trabajaremos sobre tareas programadas.

### Tareas programadas

Las tareas programadas (o _tareas calendarizadas_) son operaciones de nuestro sistema que en lugar ejecutarlas de forma interactiva, como parte de nuestros casos de uso, se ejecutan de forma automática, con cierta frecuencia.

####  Puntos de entrada

Vamos a necesitar definir un archivo que oficie de punto de entrada, o como se suele llamar en inglés, _main_. Este archivo será responsable de cargar nuestro código y ejecutar la tarea calendarizada.

```java
public class Main {
   public static void main(string[] args) {
      // ...
   }
}
```

#### Empaquetado

Para poder ejecutar nuestro main, vamos a necesitar primero crear un paquete ejecutable (en el ecosistema de Java, utilizamos el formato `jar`) que contenga el código de nuestro proyecto y sus dependencias.

Para ellos vamos a tener que agregar la configuración del `maven-assembly-plugin` a nuestro `pom.xml`:

```xml
<plugin>
    <!-- Este plugin permite empaquetar nuestras aplicaciones utilizando distintos formatos -->
    <artifactId>maven-assembly-plugin</artifactId>
    <executions>
        <execution>
            <phase>package</phase>
             <goals>
                 <goal>single</goal>
             </goals>
         </execution>
     </executions>
     <configuration>
         <descriptorRefs>
             <!-- Esto indica que genere un paquete que incluya las dependencias -->
             <descriptorRef>jar-with-dependencies</descriptorRef>
         </descriptorRefs>
         <archive>
             <!-- Esto indica cual será el punto de entrada de nuestro ejecutable -->
             <manifest>
                 <mainClass>archivo.con.el.Main</mainClass>
             </manifest>
         </archive>
    </configuration>
</plugin>
```

Luego podremos ejecutar `mvn package`, comando que generará el paquete en cuestión.

#### Crontab y expresiones `cron`

Finalmente, en cada nodo del sistema operativo donde se ejecutarán nuestras tareas programadas, vamos a tener que generar un crontab:

> Nota: Al editar las tareas de `cron`, éste nos abrirá por defecto un editor de línea de comandos, como `nano` o `vim`. ¡A no temer! Es un editor, pero que se opera mediante el teclado.


```bash
# Con este comando podemos listar las tareas instaladas
crontab -l
```

```bash
# nos permitirá editar las tareas
crontab -e
```

Ahora sí, veamos las expresiones cron. Son propias de los sistemas operativos unix (como Linux) pero están ampliamente extendidas en otras tecnologías. Tienen la siguiente forma:

```bash
# m h  dom mon dow   comando
```

Por ejemplo:

```bash
# a cada minuto de cada día
* *  *   *   *     java -jar /home/user/nombre-del-paquete-ejecutable.jar
```

```bash
# cada 5 minutos
*/5 *  *   *   *     java -jar /home/user/nombre-del-paquete-ejecutable.jar
```


```bash
# al inicio de cada hora
0 *  *   *   *     java -jar /home/user/nombre-del-paquete-ejecutable.jar
```

```bash
# a las 23:59 de cada domingo
23 59  *   *   0     java -jar /home/user/nombre-del-paquete-ejecutable.jar
```

¡Tenemos que tener cuidado! Las rutas a los archivos deben ser absolutas.

Si todo está bien, obtendremos el siguiente mensaje al guardar:

```
crontab: installing new crontab
```

#### Archivos de log

Necesitamos tener registro de lo que pasó. Una forma sencilla consiste en redireccionar la salida estándar utilizando `>>`

```bash
* *  *   *   *     java -jar /home/user/nombre-del-paquete-ejecutable.jar >> /home/user/tarea_programada.log
```

#### Deteniendo la calendarización

```bash
crontab -e
```

Y eliminamos la línea o la comentamos con `#`. Obtendremos nuevamente éste mensaje:

```
crontab: installing new crontab
```

#### Un ejemplo concreto

```java
// TPI3
class MainDeEnvioDeRecordatorioDeEventos {
  public static void main(string[] args) {
    RepositorioEventos
      .dameTodos()
      .filter(evento => evento.estaPendienteDeNotification()) // TODO delegar en el repositorio
      .filter(evento => evento.estaEnPlazoDeSerNotificado())
      .each(evento => evento.enviarRecordatorio())
  }
}

class Evento {

  boolean estaEnPlazoDeSerNotificado() {
    return LocalDate.now().isCloseTo(this.fechaYHoraDeInicio, 5.minutes())
  }

  boolean estaPendienteDeNotification() {
    return !this.recordatorioEnviado
  }

  void enviarRecordatorio() {
    // ... utilizar su o sus medios de notificacion para mandar la(s) notificacion(es)
    // correspondientes
    this.recordatorioEnviado = true
  }
}

// en el crontab agregamos un
// */2 * * * * java -jar /bin/calendarios/mainEnvioEventos.jar

// en el pom tenemos que agregar la configuración necesaria para construir este jar
// ....
```

## Material

- [Repaso de Observer](https://gist.github.com/flbulgarelli/142210fd84d13e9df8f9d0290215bebd)
- [Que Me Pongo Sexta Iteración](https://docs.google.com/document/d/1NxqhJj70kt-_4aw-CawlISdJZyedzoOcLAVJAZVZISE/edit): Punto bonus.
   - Esta es una posible [puesta en común](https://drive.google.com/file/d/1JPWEYqw0a_ylqq2zF3zLa2SscGqPFPGg/view?usp=sharing).
   - Esta es otra [puesta en común, que incluye el punto bonus](https://github.com/flbulgarelli/qmp6)
- [Presentación utilizada](https://docs.google.com/presentation/d/1ZSxNDDsTcsi26ZvX69ysqdwmZ_NH_OW3EC7loYpZGSc/edit)
- [Apunte sobre el patrón Observer, caso práctico](https://docs.google.com/document/d/1h8Cce8faTG65RXoElPvAsPS-I8H2MxMbemzMcYCL56I/edit)
- [Sobre los efectos del Observer](https://docs.google.com/document/d/1UwTcRLugqDgZuqfWvOxckwk27UBjDo70AF1znzX24QM/edit#heading=h.y04j3mise0wn)

## Material complementario

- [Patrones de Diseño](https://www.utnianos.com.ar/foro/attachment.php?aid=3577)
- Observer, página 269


## Para la próxima clase

- Releer los apuntes de [Observer, caso práctico](https://docs.google.com/document/d/1h8Cce8faTG65RXoElPvAsPS-I8H2MxMbemzMcYCL56I/edit), [Repaso de Observer](https://gist.github.com/flbulgarelli/142210fd84d13e9df8f9d0290215bebd) y [Sobre los efectos del Observer](https://docs.google.com/document/d/1UwTcRLugqDgZuqfWvOxckwk27UBjDo70AF1znzX24QM/edit#heading=h.y04j3mise0wn). Es importante hacerlo dado que es un patrón complejo que requiere tiempo para que asiente.
- Ver [¿Por qué me vigilan si no soy nadie?](https://www.youtube.com/watch?v=NPE7i8wuupk), una charla que sirve como puntapié para entender el vínculo entre eventos, extractivismo de datos y  vigilancia digital.
- Ver [Diseño y metodologías de desarrollo](https://docs.google.com/document/d/11PQO8NPSOV4SW0ZwtFsh4RCtWubuEBV6E5qPicqJNKs/edit)
- Leer [el enunciado de Noodle](https://docs.google.com/document/d/1-Qpv38kB29lNuzIi88TkTg4LGbO_iNijoVesZyvG5wM/edit#heading=h.3sssitpwxf4t). Idealmente, comenzar a pensar una solución.
