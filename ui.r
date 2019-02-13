
  installed.packages('dplyr')
  installed.packages('ggplot2')
  installed.packages('gridExtra')
    installed.packages('knitr')
    installed.packages('kableExtra')
    installed.packages('shiny')
    installed.packages('shinydashboard')
    installed.packages('readr')


require(dplyr)
require(ggplot2)
require(gridExtra)
require(knitr)
require(kableExtra)
require(shiny)
require(shinydashboard)
require(readr)
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)
datos <- read_csv("saber 2018.csv")

shinyUI(fluidPage(

   titlePanel("Generador de Reportes parametrizado"),
  
  h4("La siguiente aplicacion genera reportes para 
     cada uno de los colegios, utilizando 
     como insumo las pruebas Saber 11"),
  
      box(selectInput(inputId = "sede",label = "Sede",
                    choices = unique(datos$cole_cod_dane_sede),
                    multiple = FALSE,width = 700)
         ),
   mainPanel(downloadButton("reporte", "Generar"))
))
