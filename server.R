shinyServer(function(input, output) {
  
    output$reporte <- downloadHandler(
    filename = paste("Reporte",".html",sep = ""),
    
    content = function(file){
      
      params <- list(make = input$sede)
        tempReport <- file.path(tempdir(), "Reporte.Rmd")
        file.copy("Reporte.Rmd", tempReport, overwrite = TRUE)
      rmarkdown::render(tempReport,output_file = file,
                        params = params,
                        envir = new.env(parent = globalenv())
                              ) }) 
  }
