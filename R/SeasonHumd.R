#
#
#
#
#'Humidity Summary
#'
#'
#'@param city is your input table. See the package description and example data to see the format required
#'This function will return a tibble with the average humidity for each of the months of your baseball season
SeasonHumd = function(city) {
  average_humd = city %>%
    group_by(month) %>%
    summarise(avg_humd = mean(humidity)) %>%
    arrange(match(month, month.name))
  return(average_humd)
}
