# 1. ¿Qué es el Kernel?
El kernel es el núcleo de un sistema operativo y, por tanto, la interfaz entre el software y el hardware. Es por ello por lo que se está usando continuamente. En pocas palabras: el kernel es el corazón de un sistema operativo.

El kernel se encuentra en el centro del sistema operativo y controla todas las funciones importantes del hardware, ya sea un sistema Linux macOS o Windows, un smartphone, un servidor, una virtualización como KVM o cualquier otro tipo de ordenador.
## Tipos de Kernel
Se pueden diferenciar cuatro de ellos :
#### ***Monolítico:*** 
 Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Está programado de forma no modular, y tiene un rendimiento mayor que un micronúcleo. Sin embargo, cualquier cambio a realizar en cualquier servicio requiere la recopilación del núcleo y el reinicio del sistema para aplicar los nuevos cambios.

Un sistema operativo con núcleo monolítico concentra todas las funcionalidades posibles (planificación, sistema de archivos, redes, controladores de dispositivos, gestión de memoria, etc) dentro de un gran programa. Deberá ser recompilado por completo al añadir una nueva funcionalidad y un error en una rutina puede propagarse a todo el núcleo. 

![](https://static.javatpoint.com/operating-system/images/monolithic-structure-of-operating-system.png)

Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.
#### ***Microkernel:*** 
Mejor conocidos como micronúcleos, estos son aquellos que son catalogados como mejores en comparación con el kernel monolítico, debido a que el mismo cumple una serie de pequeñas abstracciones mucho más simples que las comúnmente observadas en el kernel monolítico, y su función principal es utilizar diversas aplicaciones para facilitar su funcionalidad. 

El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.

![](https://www.guru99.com/images/1/121119_0439_Microkernel1.png)
####  ***Híbrido:*** 
La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. 

A diferencia de los núcleos monolíticos tradicionales, los controladores de dispositivos y las extensiones al sistema operativo se pueden cargar y descargar fácilmente como módulos, mientras el sistema continúa funcionando sin interrupciones. También, a diferencia de los núcleos monolíticos tradicionales, los controladores pueden ser prevolcados (detenidos momentáneamente por actividades más importantes) bajo ciertas condiciones. Esta habilidad fue agregada para gestionar correctamente interrupciones de hardware, y para mejorar el soporte de Multiprocesamiento Simétrico.

![](https://qph.cf2.quoracdn.net/main-qimg-df26b5a2361f3b2f3aa2e16658940346)
#### ***Exonúcleo:*** 
También conocidos como sistemas operativos verticalmente estructurados, representan una aproximación radicalmente nueva al diseño de sistemas operativos. La idea subyacente es permitir que el desarrollador tome todas las decisiones relativas al rendimiento del hardware. Los exonúcleos son extremadamente pequeños, ya que limitan expresamente su funcionalidad a la protección y el multiplexado de los recursos. Se llaman así porque toda la funcionalidad deja de estar residente en memoria y pasa a estar fuera, en librerías dinámicas.


![](https://zhu45.org/images/microkernels.png)




# 2. User Mode vs Kernel Mode
Un procesador en una computadora que ejecuta un Sitema Operativo tiene dos modos diferentes: modo de usuario y modo kernel .

El procesador cambia entre los dos modos según el tipo de código que se esté ejecutando en el procesador. Las aplicaciones se ejecutan en modo usuario y los componentes principales del sistema operativo se ejecutan en modo kernel. Si bien muchos controladores se ejecutan en modo kernel, algunos controladores pueden ejecutarse en modo de usuario.
##  Modo usuario
Cuando una aplicación informática se está ejecutando, está en el modo de usuario. Algunos ejemplos son la aplicación de Word, PowerPoint, leer un archivo PDF y navegar por Internet.
 
Los programas de modo de usuario tienen menos privilegios que las aplicaciones de modo de usuario y no se les permite acceder a los recursos del sistema directamente. Por ejemplo, si una aplicación en modo de usuario desea acceder a los recursos del sistema, primero deberá pasar por el kernel del sistema operativo mediante llamadas al sistema. 

## Modo Kernel
Un núcleo es un programa de software que se utiliza para acceder a los componentes de hardware de un sistema informático. Kernel funciona como un software de middleware para hardware y software de aplicación/programas de usuario. El modo Kernel generalmente se reserva para funciones confiables de bajo nivel del sistema operativo.

 Por lo tanto, es el programa más privilegiado, a diferencia de otros programas, puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware, por ejemplo, una cámara web, primero tiene que pasar por el núcleo mediante una llamada al sistema y, para llevar a cabo estas solicitudes, la CPU cambia del modo de usuario al modo de núcleo en el momento de la ejecución. Después de completar finalmente la ejecución del proceso, la CPU vuelve a cambiar al modo de usuario .


 ## 3 Interruptions vs Traps
 
 | Interruptions  | Traps  | 
| :------------ |:---------------:| 
|  Las interrupciones son eventos externos al flujo normal de ejecución de un programa que requieren la atención inmediata del sistema operativo. | Las trampas, también conocidas como excepciones o interrupciones de software, son eventos generados por el propio programa en ejecución. |
| Pueden ser generadas por hardware, como un temporizador, un dispositivo de entrada/salida, o una señal de hardware. |Son usadas por el programa para solicitar servicios del sistema operativo, como realizar una llamada al sistema (system call) para realizar operaciones de entrada/salida, asignación de memoria, etc. |  
| Cuando se produce una interrupción, el sistema operativo suspende temporalmente la ejecución del programa actual y pasa a ejecutar un controlador de interrupciones (interrupt handler) que maneja el evento asociado. | A diferencia de las interrupciones, las trampas son generadas de manera intencional por el programa en ejecución y no por eventos externos al sistema |   
|Las interrupciones pueden ser enmascarables o no enmascarables, dependiendo de si se pueden desactivar o no.|  "Trap de fallo" o "Trap de excepción de error". Este tipo de trampa se genera cuando un programa encuentra un error durante su ejecución|  

