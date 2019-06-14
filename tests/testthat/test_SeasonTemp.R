test_that(
  "SeasonTempWorks",
  {
    boston_data =
      as.data.frame(
        cbind(
          month = c("March","March","March","April","April","April"),
          humidity   =rep(0, times = 6)
        )
      )

    expect_that(mean(SeasonTemp(boston_data)$avg_humd) > 0)
  }
)
