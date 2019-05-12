#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
server <- function(input, output) {
   output$boite <- renderUI({
     if (input$presence_boite == "oui"){
       box(title = "boite choisi", 
           solidHeader = TRUE,
           status = input$type_boite)
       
     }
     
     
   })
 

  
}
