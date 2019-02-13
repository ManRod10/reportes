
require(dplyr)
require(ggplot2)
require(gridExtra)
require(knitr)
require(kableExtra)
require(shiny)
require(shinydashboard)
require(readr)

datos <- read_csv("prueba.csv")

 ui <- fluidPage(

   titlePanel("Generador de Reportes parametrizado"),
  
  h4("La siguiente aplicacion genera reportes para 
     cada uno de los colegios, utilizando 
     como insumo las pruebas Saber 11"),
  
      box(selectInput(inputId = "sede",label = "Sede",
                    choices = unique(datos$cole_cod_dane_sede),
                    multiple = FALSE,width = 700)
         ),
   mainPanel(downloadButton("reporte", "Generar"))
)
 
 server <-  function(input, output) {
   
   reactive({
     print(input$sede)
   })
   output$reporte <- downloadHandler(
     filename = paste("Reporte",".html",sep = ""),
     
     content = function(file){
       
       params <- list(codigo = input$sede)
       
       rmarkdown::render("Reporte.Rmd",output_file = file,
                         params = params,
                         envir = new.env(parent = globalenv())
       ) })  
   
 }
 shinyApp(ui = ui, server = server)
 
