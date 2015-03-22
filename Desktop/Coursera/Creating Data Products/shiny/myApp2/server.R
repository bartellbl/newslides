library(shiny)

gompertz<-function(a,b,c,t) a*exp(-b*exp(-c*t))
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a plot of the Gompertz function. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    x    <- seq(input$range[1],input$range[2],length.out=100)
    gout <- gompertz(input$a,input$b,input$c,x)
    
    # draw the histogram with the specified number of bins
    plot(x,gout,type="l",xlab="t",ylab="y",main="Gompertz Function")
  })
  
})