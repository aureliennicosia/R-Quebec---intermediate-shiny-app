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
library(plotly)

# Define UI for application that draws a histogram

dashboardPage(title = "R a quebec ex 2",
  dashboardHeader(title = "R a quebec ex 2"),
  dashboardSidebar(),
  dashboardBody(
    
    fluidRow(
      box(title = "Choix des parametres", solidHeader = TRUE,
          selectInput('xcol', 'X Variable', names(iris)),
          selectInput('ycol', 'Y Variable', names(iris),
                      selected=names(iris)[[2]]),
          selectInput('color', 'Color by', names(iris),
                      selected=names(iris)[[5]])
      ),
      box(title = "graphique", solidHeader = TRUE,
          plotOutput('plot1')
          )
          ))
    
    
  )
