hpiData <- read.csv("./HPI.csv")

#shinyServer(
#  function(input, output) {
    
    output$happinessRank <- renderText({
        paste("Happiness rank of your country is", 
                      hpiData[hpiData$Country == input$userCountry,'HPIRank'])
    })
    output$lifeExpectancy <- renderText({
        paste("Life expectancy of your country is ", 
                      hpiData[hpiData$Country == input$userCountry, 'LifeExpectancy'])
    })
    output$remainingYears <- renderText({
        paste("Remaining years for you: ", 
              hpiData[hpiData$Country == input$userCountry, 'LifeExpectancy'] - input$userAge)
    })
#  } 
#)