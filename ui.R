library(shiny) 
#read data for selective input ui
hpiData <- read.csv("./HPI.csv")

shinyUI(
  pageWithSidebar(
    headerPanel("2013 Happyness Index rank of a country, and your remaining years in the country"), 
    sidebarPanel(
      #Use Country column of the data for a selective input
      selectInput('userCountry', 'Your Country:',
        as.vector(hpiData$Country)
      ),
      #A numeric input, default value is 30
      numericInput('userAge', 'Your Age', 30)
    ),
    #main panel shows outputs retrieved and calculated by server based on sidebarPanel input
    mainPanel( 
      textOutput('happinessRank'),
      textOutput('lifeExpectancy'),
      textOutput('remainingYears')
    ) 
  )
)