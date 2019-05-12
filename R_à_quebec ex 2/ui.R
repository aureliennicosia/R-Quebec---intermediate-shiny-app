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

dashboardPage(title = "R a quebec ex 2",
  dashboardHeader(title = "R a quebec ex 2"),
  dashboardSidebar(
    h2("Bienvenue"),
    br(),
    br(),
    htmlOutput('rep')),
  dashboardBody(
    
    fluidRow(
      box(title = "Choix des parametres", solidHeader = TRUE,
          selectInput('xcol', 'X Variable', names(iris)),
          selectInput('ycol', 'Y Variable', names(iris),
                      selected=names(iris)[[2]]),
          numericInput('clusters', 'Cluster count', 3,
                       min = 1, max = 9)
      ),
      box(title = "Resultat du K-means", solidHeader = TRUE,
          plotOutput('plot1')
          )
          )
      
    )
    
    
  )
