rescale <- function(x, digits = 2, na.rm = TRUE){

  if(class(x) %in% 'data.frame') message("Warning: Object ought to be a vector")
  if(isTRUE(na.rm)) x <- x[!is.na(x)]
  rng <- range(x)
  round((x - rng[1]) / (rng[2] - rng[1]), digits = digits)
  
}

rescale(mtcars)
sapply(mtcars, rescale)