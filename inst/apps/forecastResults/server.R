server <- function(input, output, session) {

  rv = reactiveValues()
  observe({
    rv$Data <- attrition
    })
  
  # model fit
  output$fit <- renderPlot({
    
    
    
  }) 
  
}

