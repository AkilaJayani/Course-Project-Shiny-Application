
# This is the server logic for "Predict MPG" web application.

# Build prediction function using mtcars data set
fit<-lm(mpg~wt+hp, data=mtcars)


library(shiny)

shinyServer(function(input, output) {
  
  #Read input from user
  output$inputValue1 <- renderPrint({input$Weight})
  output$inputValue2 <- renderPrint({input$Horsepower})
  
  #Calculate and output the MPG prediction
  output$prediction <- renderPrint(predict(fit,data.frame(wt=input$Weight,hp=input$Horsepower)))
  
  #Read and output the instructions file
  getPage<-function() {
    return(includeHTML("instructions.html"))
  }
  output$instructions<-renderUI({getPage()})
})
