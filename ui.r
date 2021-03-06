
require(dplyr)
require(ggplot2)
require(gridExtra)
require(knitr)
require(kableExtra)
require(shiny)
require(shinydashboard)
require(readr)
require(httr)


shinyUI(fluidPage(

   titlePanel("Generador de Reportes parametrizado"),
  
  h4("La siguiente aplicacion genera reportes para 
     cada uno de los colegios, utilizando 
     como insumo las pruebas Saber 11"),
  
      box(selectInput(inputId = "sede",label = "Sede",
                    choices = unique(datos$cole_nombre_sede),
                    multiple = FALSE,width = 700)
         ),
   mainPanel(downloadButton("reporte", "Generar"))
)
) 
