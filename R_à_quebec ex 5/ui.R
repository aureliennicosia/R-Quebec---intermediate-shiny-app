#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
options(shiny.reactlog = TRUE)
library(shiny)
library(shinydashboard)
library(plotly)
library(reactlog)
# Define UI for application that draws a histogram

dashboardPage(title = "R a quebec ex 4",
  dashboardHeader(title = "R a quebec ex 4"),
  dashboardSidebar(),
  dashboardBody(
    
    fluidRow(
      box(title = "Choix des parametres", solidHeader = TRUE, width = 3,
          selectInput('xcol', 'X Variable', names(iris)),
          selectInput('ycol', 'Y Variable', names(iris),
                      selected=names(iris)[[2]]),
          selectInput('color', 'Color by', names(iris),
                      selected=names(iris)[[5]]),
          verbatimTextOutput("print_row")
      ),
      box(title = "table", solidHeader = TRUE, width = 9,
          DT::dataTableOutput("table1")
      )
          ),
    fluidRow(plotOutput("plot1"))
    
    
  )
)
