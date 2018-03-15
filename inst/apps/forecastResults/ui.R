ui <- fluidPage(
  responsive = NULL,
  theme = shinythemes::themeSelector(),
  
  titlePanel("Forecasting Attrition via Dynamic Regression", windowTitle = "attrition-forecast"),

  sidebarLayout(
    
    # Inputs
    sidebarPanel(width = 3,
                 
      # selectInput(inputId = "iteration",
      #             label = "Iteration",
      #             choices = c()),           
      
      #reg ar component
      sliderInput("ar",
                  label = "Autoregressive Order",
                  min = 0,
                  max = 5,
                  value = 1),

      #reg diff component
      sliderInput("i",
                  label = "Differencing Order",
                  min = 0,
                  max = 1,
                  value = 0),

      #reg ma component
      sliderInput("ma",
                  label = "Moving-Average Order",
                  min = 0,
                  max = 5,
                  value = 1),

      #seasonal ar component
      sliderInput("sar",
                  label = "Seasonal Autoregressive Order",
                  min = 0,
                  max = 5,
                  value = 1),

      #seasonal diff component
      sliderInput("si",
                  label = "Seasonal Differencing Order",
                  min = 0,
                  max = 2,
                  value = 0),

      #seasonal ma component
      sliderInput("sma",
                  label = "Seasonal Moving-Average Order",
                  min = 0,
                  max = 5,
                  value = 1),

      #econ var selection
      checkboxGroupInput(inputId = "econvars",
                         label = "Economic Indicators",
                         choices = c(
                           "Unemployment Adj" = "Unemployment.Rate.Adj",
                           "Unemployment NonAdj" = "Unemployment.Rate.NonAdj",
                           "CPI" = "CPI.Adj",
                           "Nonfarm Jobs Adj" = "Nonfarm.Jobs.Adj",
                           "Nonfarm Jobs NonAdj"= "Nonfarm.Jobs.NonAdj",
                           "Labor Force Participation" = "Labor.Force.Participation",
                           "Labor Market Momentum" = "Labor.Market.Momentum",
                           "Real GDP per capita" = "Real.GDP.Per.Capita",
                           "Nonfarm Job Quits" = "Nonfarm.Quits.Adj")),
      
      # Built with Shiny by RStudio
      br(),br(),    # Two line breaks for visual separation
      h5("Built with",
         img(src = "https://www.rstudio.com/wp-content/uploads/2014/04/shiny.png", height = "30px"),
         "by",
         img(src= "https://www.rstudio.com/wp-content/uploads/2014/07/RStudio-Logo-Blue-Gray.png", height = "30px"),
         ".")),
    
    # Outputs
    mainPanel(width = 9,
              
              tabsetPanel(id = "tabspanel", type = "tabs",
                          
                # tabPanel(title = "Introduction",
                #          uiOutput(outputId = "introduction")),
                
                tabPanel(title = "Model Fit",
                         plotOutput(outputId = "fit")),
                
                tabPanel(title = "Model Summary",
                         dataTableOutput(outputId = "summary")),
                
                tabPanel(title = "Residuals",
                         plotOutput(outputId = "residuals"))))))






