# DOCUMENTACION PARA LA EJECUCIÓN

### Script de base de datos en la carpeta: BeCleverDB
*Probado en PhpMyAdmin

**Al ejecutar el proyecto, se abrirá el navegador con Swagger. Donde podremos consultar todos los endpoints.**

**Para ejecutar el primer servicio (register) vamos al endpoint POST/EmployeeControl, en el cual enviaremos un json del tipo:**
```
{
  "employeeId": 0,
  "date": "2024-05-17T18:45:34.048Z",
  "registerType": "Ingreso",
  "businessLocationId": 0
}
``` 

**Para ejecutar el segundo servicio (search) vamos al endpoint GET/EmployeeControl/search, en el cual rellenamos los campos.**<br>

  -dateFrom y dateTo son obligatorios.<br>
  -descriptionFilter filtra por nombre o apellido (opcional)<br>
  -businessLocationsId filtra por sucursal (1 = BeClever España; 2 = BeClever Argentina; 3 = BeClever Brasil) (opcional)<br>


**Para ejecutar el tercer servicio (average) vamos al endpoint GET/EmployeeControl/average, en el cual rellenamos los campos**<br>

 -dateFrom y dateTo para poner las fechas.






