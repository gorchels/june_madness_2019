#'
#'Compute yearly average across different cities that have baseball teams.
#'
#'This function will return the yearly average temperature across multiple cities.
#'@param temperature_array a multidimensional array containing monthly temperatures across years for different cities
#'
#'

yearly_temperature_computation <- function(temperature_array) {
  average_yearly_temperature <- apply(temperature_array, MARGIN = c(2, 3), FUN = mean)
  return(average_yearly_temperature)
}
