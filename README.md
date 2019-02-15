# Reporte

Esta aplicacion se construyo utilizando la base de datos de las pruebas SABER 11 del ICFES y las librerias de Shiny y Rmarkdown. Los archivos denotan lo siguiente:

* **Reporte.Rm** Es la plantilla del reporte estadistico, puede generarse en distintos formatos (.docx,pptx,html,pdf)
* **ui.r** Es la interfaz de usuario (en donde se interactua con la app)
* **server.r** Es el servidor el cual compila los reportes deacuerdo al Colegio elegido
* **stilyes.css** Es archvio que contiene el estilo de la presentacion, aunque en este caso solo se incluye el logo de R studio

## Ejemplo

Para ejecutar la app se deben ejecutar los siguientes comandos en la consola de R studio

```
## Paquetes escenciales
require(shiny)
require(readr)
# se carga la base de datos
datos<-read.csv("https://raw.githubusercontent.com/ManRod10/database/master/datos.csv",
                encoding = 'utf-8')
# se ejecuta la aplicacion
runGitHub('reportes','ManRod10',ref='master')
```

## Advertencia

Debido a que se utiliza una submuestra de la base del ICFES es posible que algunos casos no se tengan suficientes datos para compilar el reporte.
