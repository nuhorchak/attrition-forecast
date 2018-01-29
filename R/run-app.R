run_my_app <- function(dir) {
  
  app_dir <- system.file('apps', dir , package = 'attrition.forecast')
  
  shiny::shinyAppDir(app_dir)
  
}