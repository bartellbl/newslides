library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Gompertz function"),  
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      p("The Gompertz function is a mathematical model for a time series
      where the growth is slowest at the beginning and end of an interval.
      It can be used to model growth to a saturation point
      such as the adoption or uptake of a new product/technology, the 
      growth of a population with finite resources, or the growth of a tumor.", 
        style = "font-family: 'baskerville'; font-si16pt"),
      
      p("The function takes the following form: ", 
        style = "font-family: 'baskerville'; font-si16pt"),
      
      HTML('<img src="http://upload.wikimedia.org/math/2/e/9/2e9754efee8453313e6172280dc8d0e0.png" border="0"/>'),
      p(""),
      a(href = "http://en.wikipedia.org/wiki/Gompertz_function",
      "Link to Wikipedia article on the Gompertz function"),
      
      p("This app allows the user to interact with the Gompertz function
        by changing the parameters a,b, and c as well as the plotting
        range using the sliders below:", 
        style = "font-family: 'baskerville'; font-si16pt"),
      
      sliderInput("a",
                  "Parameter a:",
                  min = 0,
                  max = 5,
                  value = 1,step=0.1),
      sliderInput("b",
                  "Parameter b:",
                  min = 0,
                  max = 5,
                  value = 1,step=0.1),
      sliderInput("c",
                  "Parameter c:",
                  min = 0,
                  max = 5,
                  value = 1,step=0.1),
      sliderInput("range",
                  "Plot Range:",
                  min = -10,
                  max = 10,
                  value = c(-2,2),step=0.1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))