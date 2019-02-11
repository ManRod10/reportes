library(dplyr)
library(ggplot2)
library(gridExtra)
library(knitr)
library(kableExtra)
library(shiny)
library(shinydashboard)
library(readr)

datos <- read_csv("saber 2018.csv")

shinyUI(fluidPage(

   titlePanel("Generador de Reportes parametrizado"),
   
   h4("La siguiente aplicacion genera reportes para 
                      cada uno de los colegios, utilizando como insumo las pruebas Saber 11"),
   
        box(selectInput(inputId = "sede",label = "Sede",
                    choices = unique(datos$cole_cod_dane_sede),
                    multiple = FALSE,width = 700))
                                )
)
