test_that(
  "spring_summary_works",
  {
    boston_data =
      as.data.frame(
        cbind(
          month = c("March","July","October"),
          humidity   = c(40, 70, 80)
        )
      )

    expect_that(mean(SeasonHumd(boston_data)$avg_humd) >0)
    expect_that(spring_summary(clim_data, spring_months=4)$mean_springT, equals(0.5))
    expect_that(spring_summary(clim_data, spring_months=1)$mean_springT, equals(1))
    expect_true(spring_summary(clim_data, spring_months=c(1:4))$coldest_springT > -10)
  }
)
