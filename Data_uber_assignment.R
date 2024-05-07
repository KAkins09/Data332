library(shiny)
library(readr)
library(lubridate)

uber_raw_data_sep14 <- read_csv("uber-raw-data-sep14.csv")
uber_raw_data_may14 <- read_csv("uber-raw-data-may14.csv")
uber_raw_data_jun14 <- read_csv("uber-raw-data-jun14.csv")
uber_raw_data_jul14 <- read_csv("uber-raw-data-jul14.csv")
uber_raw_data_aug14 <- read_csv("uber-raw-data-aug14.csv")
uber_raw_data_apr14 <- read_csv("uber-raw-data-apr14.csv")

Sept_may <- rbind.data.frame(uber_raw_data_sep14,uber_raw_data_may14)

SMJJAA<- rbind.data.frame(Sept_may,uber_raw_data_jun14,uber_raw_data_jul14,uber_raw_data_aug14,uber_raw_data_apr14)



ui <- fluidPage(
  titlePanel('Uber Data'),
  DT::DTOutput('SMJJAA')  
)

server <- function(input, output) {
  
 SMJJAA <- renderTable({
    my_dataframe
  })
}



shinyApp(ui = ui, server = server)


loaded_dataframe <- readRDS("SMJJAA")

saveRDS(my_dataframe, file = "SMJJAA")


