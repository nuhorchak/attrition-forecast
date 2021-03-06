attrition-forecasting
================
1st Lt Jake Elliott
18 January 2018

<!-- don't ever edit README.md, go to README.Rmd instead -->

### Analyzing the Economic Effects on US Air Force Officer Attrition

Howdy\! This package utilizes freely available economic data (from the
St. Louis FRED) and personnel data (provided by HAF/A1) to forecast US
Air Force officer monthly attrition rates. The package provides a
reproducible means for personnel analysts (and any other interested
parties) to analyze the effects of the economic environment on
attrition.

The package allows the user to select from a host of economic indicators
such as the U1 unemployment rate, labor market momentum index, labor
force participation rate, etc. to generate a mathematical model for
descriptive and predictive purposes. This endeavor is geared to those
interested in investigating the relationship between aspects of civilian
labor markets and attrition in the military. Additionally, the model(s)
developed may be used to forecast attrition based on economic data.

The package aids the development of a regression model with ARIMA
errors, and as such a basic understanding of statistical model
evaluation and assessment is suggested. Additionally, a understanding
of, or willingness to research, labor market inidicators will be useful
in model specification. The package relies primarily on the forecasting
functions offered by Rob Hyndman’s `fpp2` R package. We build off of
this work by focusing efforts on regression and ARIMA models, and their
evaluation and specification.

More specifically, this package provides the following features:

  - Selection of economic variables for regression from a pre-determined
    subset, included with the package (any additional indicators will
    have to be manually downloaded from the [St. Louis
    FRED](https://fred.stlouisfed.org/))

  - Specification of the personnel data subset, also included with the
    package (rated, non-rated, line officers, etc.)

  - Specification of ARIMA error model (differencing, degree of
    autoregression, seasonality, etc.) or allows for automatic ARIMA
    specification if desired

  - Generation of model assessment statistics (RMSE, MAPE, residual
    analysis, graphical analysis)

  - Graphic generation for presentation and evaluation purposes

The latest version of this package will be found at my
[github](https://github.com/jtelliott/attrition-forecast) page. All
military personnel data is unclassified and cleared for public
release.

#### Progress Check

| Feature             | Priority | Status | Value                   | Inputs            | Outputs                           | Timeline                             |
| ------------------- | -------- | ------ | ----------------------- | ----------------- | --------------------------------- | ------------------------------------ |
| Variable selection  | 1        | ns     | model specification     | selected vars     | selected vars                     | sufficient time for current deadline |
| ARIMA specification | 3        | ns     | model specification     | ARIMA attributes  | selected model attributes         | sufficient time for current deadline |
| Personnel data      | 2        | ns     | model specification     | personnel subset  | selected subset                   | sufficient time for current deadline |
| Assessment stats    | 4        | ns     | ID best fit model       | stat selection    | residual plots, accuracy measures | sufficient time for current deadline |
| Graphics            | 5        | ns     | presentation/evaulation | graphic selection | forecast plots over actual data   | sufficient time for current deadline |
