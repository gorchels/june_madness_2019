test_that(
  "HomerunsWorks",
  {
    boston_data =
      as.data.frame(
        cbind(
          month = "March",
          avg_humd   =50
        )
      )

    expect_that((homeruns(boston_data)$avg_humd) > 0)
  }
)

