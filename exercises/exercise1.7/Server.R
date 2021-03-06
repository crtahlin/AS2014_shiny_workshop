# Applied Statistics 2014 conference workshop

# load the library for developing web apps with R (http://shiny.rstudio.com/)
library(shiny)

# define the server-side logic of the Shiny application
shinyServer(function(input, output) {
  
  output$plotDensity <- renderPlot({
    curve(dnorm(x, mean=input$meanValue, sd=input$sdValue), from=-4, to=4, col=input$curveColor,
          main=input$plotTitle, ylab=input$verticalLabel)
    if(input$plotMean==TRUE) {abline(v=input$meanValue)} 
  })

  output$tableDensity <- renderTable({
    x <- seq(from = -4, to = 4, by = 0.1)
    table <- cbind("Value" = x, "Probability density" = dnorm(x, mean=input$meanValue, sd=input$sdValue))
    return(table)
  })
  
})



