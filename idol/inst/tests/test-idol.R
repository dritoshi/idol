test_that("check effective cap ratio", {
  height <- 152
  bust   <- 83
  waist  <- 56
  my.ecr <- (bust - waist) * 100 / height

  my.idol <- new("Idol")
  
  expect_equal(
    my.ecr,
    effective.capsize(my.idol)
  )
}
)
test_that("check substantial aspect ratio", {
  height <- 152
  bust   <- 83
  waist  <- 56
  hip    <- 80 
  my.sar <- (bust + waist + hip) * 10 / height

  my.idol <- new("Idol")
  
  expect_equal(
    my.sar,
    substantial.aspect(my.idol)
  )
}
)
