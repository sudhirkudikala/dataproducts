library(shiny)


shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Regression Model for milage"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("c", 
                "Number of Cylinders", 
                min = 4,
                max = 8, 
                value = 4),
    sliderInput("h", 
                "Horsepower", 
                min = 52,
                max = 335, 
                value = 100),
    
    h4("Documentation"),
    helpText("A simple application to predict the milage based on cylinders and horsepower"),
    helpText("Three possible cylinder, 4, 6, 8"),
    helpText("Horsepower can vary from 52 to 335")
    
    ),
  
   mainPanel(
     h3("Milage"),
     verbatimTextOutput("milage")
     )
  
  )
)