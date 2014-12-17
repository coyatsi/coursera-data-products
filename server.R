library(shiny)

functionBMI <- function(weight, height){
  index <- (weight/ (height)^2)*703
  return(index)  
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$weight})
    output$inputVal <- renderPrint({input$height})
    output$bmi <- renderPrint({functionBMI(input$weight, input$height)})
     
  }
)
