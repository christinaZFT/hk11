library(shiny)
library(stats)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    x    <- iris$Sepal.Length[1:input$num]
    y    <- iris$Sepal.Width[1:input$num]
    
    # draw the histogram with the specified number of bins
    plot(x,y)
  })
  output$view <- renderTable({
    head(iris, n = input$num)
  })
})