
#
#
#
#'homeruns summary
#'
#'
#'@param ah is the output from the SeasonHumd function
#'This assumes that humidity below 50% will not have a significant effect on homeruns
homeruns = function(ah) {
  homerun_inc = mutate(ah, prob_increase = case_when(
    (avg_humd - 50)>45 ~"9%",
    (avg_humd - 50)>40 ~"8%",
    (avg_humd - 50)>35 ~"7%",
    (avg_humd - 50)>30 ~"6%",
    (avg_humd - 50)>25 ~"5%",
    (avg_humd - 50)>20 ~"4%",
    (avg_humd - 50)>15 ~"3%",
    (avg_humd - 50)>10 ~"2%",
    (avg_humd - 50)>5 ~"1%",
    (avg_humd - 50)<=5 ~"0%"))
  return(homerun_inc)
}
