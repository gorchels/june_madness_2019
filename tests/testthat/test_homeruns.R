test_that(
  "HomerunsWorks",
  {
    boston_data =
      as.data.frame(
        cbind(
          month = "March",
          humidity   =0
        )
      )

    expect_that(mean(homeruns(boston_data)$avg_humd) > 0)
  }
)
