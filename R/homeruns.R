
#
#
#
#'homeruns summary
#'
#'
#'@param ah is the output from the SeasonHumd function
#'This assumes that humidity below 50% will not have a significant effect on homeruns
homeruns = function(ah) {
  homerun_inc = mutate(ah, prob_increase = case_when((avg_humd - 50)>5 ~"1%",
                               (avg_humd - 50)>10 ~"2%",
                               (avg_humd - 50)<=5 ~"0%"))
  return(homerun_inc)
}
