library(shiny)
library(tidyverse)
library(readr)
library(lubridate)

landtemperature <- readr::read_csv('landtemperature.csv')
landandoceantemperature <- readr::read_csv('landandoceantemperature.csv')


  
 
  
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$plot <- renderPlot({
    if(input$dataset == "Global Average Land Temperature"){
      data <- landtemperature %>% filter((Year >= input$year_min) & (Year <= input$year_max))
      if(input$lin){
      ggplot(data = data,
             aes(x = Year, y = LandAverageTemp)) +
        geom_point() +
        geom_line() +
        geom_smooth(color = 'blue',method = 'lm') +
        ylab('Celsius') +
        ggtitle("Global Average Land Temperature")}
      else {
        ggplot(data = data,
               aes(x = Year, y = LandAverageTemp)) +
          geom_point() +
          geom_line() +
          ylab('Celsius') +
          ggtitle("Global Average Land Temperature")
        
      }
    }
    else {
      data <- landandoceantemperature %>% filter((Year >= input$year_min) & (Year <= input$year_max))
      if(input$lin) {
      ggplot(data = data,
             aes(x = Year, y = LandAndOceanAverageTemp)) +
        geom_point() +
        geom_line() +
        geom_smooth(color = 'blue',method = 'lm') +
        ylab('Celsius') +
        ggtitle("Global Average Land and Ocean Temperature") }
      else{
        ggplot(data = data,
               aes(x = Year, y = LandAndOceanAverageTemp)) +
          geom_point() +
          geom_line() +
          ylab('Celsius') +
          ggtitle("Global Average Land and Ocean Temperature")
      }
    }
      
       
      
    
  })

  
})
