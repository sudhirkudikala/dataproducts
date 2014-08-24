library(UsingR)
data(mtcars)

shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
      cyl <- input$c
      hp <- input$h
      fit <- lm(mpg ~ cyl + hp, data = mtcars)
      newdata <- data.frame(cyl,hp)
      output$milage <- predict(fit, newdata)
      
    })
    
  }
)