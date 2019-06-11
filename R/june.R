#
#
#
#
#'June
#'
#'Is the best madness
#'@param x means nothing
june = function(city) {
  average_temp = city %>%
    group_by(month) %>%
    summarise(avg_temp = mean(high))
}
