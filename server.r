shinyServer(function(input, output) {
  
  output$reporte <- downloadHandler(
    filename = paste("Reporte",".html",sep = ""),
    
    content = function(file){
      
      params <- list(codigo = input$sede)
      
      rmarkdown::render("Reporte.Rmd",output_file = file,
                        params = params,
                        envir = new.env(parent = globalenv())
      ) }) 
}
