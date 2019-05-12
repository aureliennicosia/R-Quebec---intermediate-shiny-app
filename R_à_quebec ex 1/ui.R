#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram

dashboardPage( title = "R @ Quebec ex 1" ,
  dashboardHeader(title = "R @ Quebec ex 1"),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
    box(
      selectInput("presence_boite", label = "Faire afficher la boite?",
                  choices = c("oui", "non"), selected = "oui"),
      selectInput("type_boite", label = "Type de boite: ",
                  choices = c("primary", "success", "info", "warning", "danger"))
      ),
    htmlOutput("boite")
    
    )
    
    
  )
)