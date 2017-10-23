

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Prediction of height of the child through his/her parents"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      helpText("This application predicts height of child through his gender and the height of the parents."),
      helpText("Please make a choise of parameters:"),
       sliderInput(inputId = "inFh",
                   label = "Father's height in centimeters:",
                   value = 150,
                   min = 150,
                   max = 200,
                   step = 1
    ),
    
    sliderInput(inputId = "inMh",
                label = "Mother's height in centimeters:",
                value = 150,
                min = 150,
                max = 200,
                step = 1),
    radioButtons(inputId = "inGen",
                 label = "Child's gender: ",
                 choices = c("Female"="female", "Male"="male"),
                 inline = TRUE)
    ),
    
    
    # Show a plot of the generated distribution
    mainPanel(
      htmlOutput("parentsText"),
      htmlOutput("prediction"),
      plotOutput("barsPlot", width = "50%")
    )
  )
))
