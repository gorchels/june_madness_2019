#
#
#
#
#'June
#'
#'Is the best madness
#'@param x means nothing
june = function(city) {
  group_by(city, month)
  average_temp = city %>%
    summarise(avg_temp = mean(high))
}

