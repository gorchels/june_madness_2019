#
#
#
#
#'June
#'
#'@param city is your input table. See the package description and example data to see the format required
#'
june = function(city) {
  group_by(city, month)
  average_temp = city %>%
    summarise(avg_temp = mean(high))
}

