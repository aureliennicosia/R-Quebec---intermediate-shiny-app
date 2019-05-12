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
library(DT)
# Define server logic required to draw a histogram
server <- function(input, output, server) {


  output$plot1 <- renderPlot({
    ggplot(data = iris, aes_string( x = input$xcol, y = input$ycol,
                                    color = input$color))+
      geom_point()
  })
  
  output$table1 <- renderDT({
    iris
  })
  
  output$print_row = renderPrint({
    s = input$table1_rows_selected
    if (length(s)) {
      cat('Lignes selectionnees:\n\n')
      cat(s, sep = ', ')
    }
  }
  )


    
  
}
