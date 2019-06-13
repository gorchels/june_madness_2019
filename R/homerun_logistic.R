#'How does weather influence the probability of hitting a homerun?
#'
#'Computes whether there is a noticable association between weather and average ticket sales revenue
#'@param homerun Binoary response variable stating whether or not a home run was hit during that days game
#'@param storm vector containing information on whether or not there was a thunderstorm the day of the baseball game
#'@param temp vector containing the mean temperature for the day the baseball game was on
#'@param humid vector containing the max humidity for the day the baseball game was on
#'@return a summary output of the regression
#'
#'


homerun_probability_computation <- function(homerun, storm, temp, humid) {
  homerun_glm<-glm(homerun ~ storm + temp + humid, family = "binomial")
  odds <- exp(coef(homerun_glm))
  prob <- odds / (1 + odds)
  return(prob)
}
