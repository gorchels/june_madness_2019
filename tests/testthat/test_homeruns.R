test_that(
  "HomerunsWorks",
  {
    boston_data_hr =
      as.data.frame(
        cbind(
          month = c("March","April"),
          avg_humd   =c(51,51)
        )
      )

    expect_that(homeruns(boston_data_hr), is_a('data.frame'))
  }
)

