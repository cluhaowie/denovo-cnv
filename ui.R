library(shiny)
ui <- fluidPage(
  titlePanel("De novo CNV in BHCMG-cohort"),
  fluidRow(
    column(4,wellPanel(textInput("id","Proband ID"),
                       textInput("interval","INTERVAL"),
                       actionButton("go","Get Recurrent CNV"))),
    column(8,tableOutput("table2"))
  ),
  fluidRow(dataTableOutput("table1"))
)
