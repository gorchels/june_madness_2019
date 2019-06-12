#'How does weather influence baseball ticket sales?
#'
#'Computes whether there is a noticable association between weather and average ticket sales revenue
#'@param revenue vector containing ticket sales revenue for all home games
#'@param storm vector containing information on whether or not there was a thunderstorm the day of the baseball game
#'@param temp vector containing the mean temperature for the day the baseball game was on
#'@param humid vector containing the max humidity for the day the baseball game was on
#'@return a summary output of the regression
#'

compute_revenue_regression <- function(revenue, storm, temp, humid) {
  rev_lm <- lm(revenue ~ storm + temp + humid)
  return(summary(rev_lm))
}
