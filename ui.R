
# This is the user-interface definition of a "Predict MPG" web application.

library(shiny)

shinyUI(navbarPage("Predict MPG",

  #Tab detailing the app user interface
  tabPanel("App", fluidPage(
    # Sidebar with weight and horsepower input
    sidebarLayout(
      sidebarPanel(
        numericInput('Weight', 'Weight (lb/1000)', 3.2, min = 1, max = 7, step = 0.1),
        numericInput('Horsepower', 'Gross horsepower', 130, min = 50, max = 350, step = 10),
        submitButton('Submit')
      ),
  
      # Show the input value and prediction
      mainPanel(
        h3('Results of prediction'),
        h4('Weight of Car'),
        verbatimTextOutput("inputValue1"),
        h4('Horsepower of Car'),
        verbatimTextOutput("inputValue2"),
        h4('Which resulted in a MPG prediction of '),
        verbatimTextOutput("prediction")
      )
    )
  )),
  #Tab with user instructions
  tabPanel("Instructions", fluidPage(
    htmlOutput('instructions')
  ))
))
