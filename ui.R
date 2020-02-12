library(ggplot2)
library(shiny)
library(choroplethr)
library(choroplethrMaps)
data('df_state_demographics')

shinyUI(fluidPage(
  titlePanel("US Demographics"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "num_colors",
        "Number of Colors : ",
        min = 1,
        max = 9,
        value = 7,
      ),
      selectInput(
        "select",label = "Select demographic : ",
        choices = colnames(df_state_demographics)[2:9],
        selected = 1,
      ),
      downloadButton('downloadData','Download'),
    ),
    
    mainPanel(
      plotOutput("map"),
      dataTableOutput("table")
    )
  )
))