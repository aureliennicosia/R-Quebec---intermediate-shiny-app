#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
# Define server logic required to draw a histogram
server <- function(input, output, server) {


  output$plot1 <- renderPlot({
    ggplot(data = iris, aes_string( x = input$xcol, y = input$ycol,
                                    color = input$color))+
      geom_point()
  })
  


    
  
}
