library(shiny)
library(shinythemes)
library(magrittr)
library(ggplot2)
library(forecast)


# load in data set
data("attrition")
attrition <- data.frame(attrition)

# declare as  time series object
df.ts <- ts(attrition, start = c(2004, 10), frequency = 12)

# impute aberrant months
dec <- subset(df.ts[,'Total'], month = 12)
dec.ind <- which(cycle(df.ts[,'Total']) == 12)
nov <- subset(df.ts[,'Total'], month = 11)
nov.ind <- which(cycle(df.ts[,'Total']) == 11)
dec[c(3,4,11)] <- mean(dec[-c(3,4,11)])
nov[c(3,4,11)] <- mean(nov[-c(3,4,11)])

# place imputed values back into the original series.
df.ts[dec.ind, 'Total'] <- dec
df.ts[nov.ind, 'Total'] <- nov



