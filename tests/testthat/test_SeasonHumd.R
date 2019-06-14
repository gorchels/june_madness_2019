test_that(
  "SeasonHumdWorks",
  {
    boston_data =
      as.data.frame(
        cbind(
          month = c("March","March","March","April","April","April"),
          humidity   =rep(0, times = 6)
        )
      )

    expect_that(SeasonHumd(boston_data), is_a('data.frame'))
  }
)
