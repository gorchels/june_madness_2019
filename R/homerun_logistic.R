#'How does weather influence the probability of hitting a homerun?
#'
#'Computes whether there is a noticable association between weather and average ticket sales revenue
#'@param homerun Binoary response variable stating whether or not a home run was hit during that days game
#'@param temp_arrau vector containing the mean temperature for the day the baseball game was on
#'@param humid_array vector containing the max humidity for the day the baseball game was on
#'@param temperature a temperature of interest to plug into the binomial logistic regression
#'@param humidity a humidity of interest to plug into the binomial logistic regression
#'@return The probability of there being a home run based on your inputted arrays and temperature and humidity of interest
#'
#'


homerun_probability_computation <- function(homerun_array, temp_array, humid_array, temperature, humidity) {
  library(kableExtra)
  logit<-glm(homerun_array ~ temp_array + humid_array, family = "binomial")
  output <- coef(logit)[1] + coef(logit)[2]*temperature + coef(logit)[3]*humidity
  odds <- exp(output)
  prob <- odds / (1 + odds)
  kableExtra::kable(prob, col.names = "Probability of Home Run")
}
