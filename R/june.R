#
#
#
#
#'June
#'
#'Is the best madness
#'@param x means nothing
SeasonWeather = function(city) {
  group_by(city, month)
  average_temp = city %>%
    summarise(avg_temp = mean(high))

  average_humd = city %>%
    summarise(avg_humd = mean(humidity))
}
