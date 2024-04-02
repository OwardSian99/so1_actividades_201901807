# SO1 - Actividad 7 - Oward Sian - 201901807

## Completely Fair Scheduler (CFS) de Linux 
### Características 

- Trata de asignar el CPU de una mnera justa a todos los procesos.

- Asigna tiempo de CPU proporcionalmente a los procesos en función de su historial de ejecución. Los procesos que hayan utilizado menos CPU tendrán más tiempo de CPU asignado en el futuro, mientras que los procesos que hayan consumido más CPU obtendrán menos tiempo.

- El CFS usa un árbol de intervalos rojo-negro para organizar y administrar los procesos en cola. Así permite un acceso eficiente y una búsqueda rápida de los procesos con el menor tiempo de CPU utilizado.

- CFS garantiza que todos los procesos reciban su parte justa de tiempo de CPU, incluso en situaciones de carga alta o baja. Esto significa que ningún proceso debería ser excluido o recibir un trato preferencial sobre otros.

- El CFS está diseñado para funcionar eficientemente en sistemas con múltiples núcleos de CPU. Distribuye equitativamente la carga de trabajo entre los núcleos disponibles para optimizar el rendimiento general del sistema.

# Funcionamiento
- Cuando un proceso es creado el CFS le asigna un pulso virtual, este pulso es la cantidad de tiempo de CPU que el proceso debería ejecutarse antes de que se considere justo que se ejecute otro proceso. 

- El CFS mantiene una lista de todos los procesos en ejecución en una estructura de árbol rojo-negro. Cada nodo del árbol representa un proceso y su pulso virtual.

- El CFS selecciona el proceso con el pulso virtual más bajo como el próximo en ejecutarse. Esto significa que el proceso que haya consumido menos tiempo de CPU hasta el momento será el siguiente en obtener la CPU.

- Después de que un proceso ha sido ejecutado durante un período de tiempo, su pulso virtual se actualiza para reflejar el tiempo que ha utilizado. Cuanto más tiempo de CPU haya consumido un proceso, más alto será su pulso virtual, lo que significa que tendrá una prioridad más baja para la ejecución futura.

- El CFS asigna la CPU al proceso seleccionado y lo ejecuta durante un período de tiempo. Este proceso continuará ejecutándose hasta que se agote su pulso virtual o sea desalojado por un proceso con un pulso virtual más bajo.

- Una vez que un proceso ha consumido su tiempo asignado de CPU, el CFS repetirá el proceso de selección para determinar cuál será el siguiente proceso en ejecutarse. Este ciclo continúa, asegurando que todos los procesos tengan la oportunidad de ejecutarse en proporción a su uso de CPU.