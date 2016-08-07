#server.R
library(shiny)

# Define UI for miles per gallon application
shinyUI(fluidPage(
  
  # Sidebar with controls to select the variable to plot against
  # mpg and to specify whether outliers should be included
  sidebarLayout(
    sidebarPanel(
      
      h3("说明"),
      helpText("根据输入的数字r，展示iris数据的前r行数据，并画出这r行数据的散点图矩阵")
      ,
      numericInput("num", 
                   label = h3("请输入展示行数"), 
                   value = 10)
    ),
    
    # Show the caption and plot of the requested variable against
    # mpg
    mainPanel(
      tableOutput("view"),
      plotOutput("distPlot")
    )
  )
))
