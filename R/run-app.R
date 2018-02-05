#' @title Runs first demo app in package
#' 
#' @description Goofin' around, learnin' to make packages and apps
#' 
#' @param app_name character string for a directory in this package
#' @param ... Addt'l options passed to shinyAppDir
#' 
#' @return A printed shiny app
#' 
#' @importFrom shiny shinyAppDir
#' 
#' @examples 
#' \dontrun{ run_my_app('myFirstApp')}
#' 
#' @export
run_my_app <- function(app_name, ...) {
  
  app_dir <- system.file('apps', app_name , package = 'attrition.forecast')
  
  shiny::shinyAppDir(appDir = app_dir, options = list(...))
  
}