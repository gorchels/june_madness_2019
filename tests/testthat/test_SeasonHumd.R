test_that(
  "SeasonHumdWorks",
  {
    boston_data =
      as.data.frame(
        cbind(
          month = c("March","July","October"),
          humidity   = c(0, 0, 0)
        )
      )

    expect_that(mean(homeruns(boston_data)$avg_humd), equals(NA))
  }
)
