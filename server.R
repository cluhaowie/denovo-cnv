library(shiny)
source("ShowSingleton.R")
#del.dup.sl.unigene <- read.table("Data/del.dup.sl.unigene.uniq.txt",sep = "\t",header = T)
#df <- del.dup.sl.unigene

df <- cnv.sl.uniq.index
server <- function(input, output) {
  output$table1 <- renderDataTable(df)
  table2 <- eventReactive(input$go,{
    vec.query <- df[which(df$SAMPLE==input$id & df$INTERVAL==input$interval),]
    ShowSingleton(vec.query,df)
  })
  output$table2 <- renderTable({table2()})
}
