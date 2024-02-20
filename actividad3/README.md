## Creando el sh para poder mostrar un saludo y la fecha actual
![](./img/1.PNG)
## Dando permisos al script
![](./img/2.PNG)
## Creando el service
![](./img/3.PNG)
## Habilitando el servicio para que inicie con el sistema
![](./img/4.PNG)
## Corriendo el servicio
![](./img/5.PNG)
## Ver el journal 
(Errores de pruebas previas)
 ```
journalctl -u act3_201901807.service 
 ```
 ![](./img/6.PNG)
### Ver el log completo

 ![](./img/7.PNG)

### Prueba de que el service está en /etc/systemd/system

 ![](./img/8.PNG)