#'
#'Season Temperature Calculator
#'
#'This function will return a tibble with the average high temperature for each of the months of your baseball season
#'@param city is your input table. See the package description and example data to see the format required(View(bronx)).
#'
SeasonTemp = function(city) {
  average_high = city %>%
    group_by(month) %>%
    summarise(avg_high = mean(high))%>%
    arrange(match(month, month.name))
  return(average_high)
}
