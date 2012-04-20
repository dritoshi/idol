test_that("check effective cap ratio", {
  height <- 152
  bust   <- 83
  waist  <- 56
  my.ecr <- (bust - waist) * 100 / height

  MyIdol <- Idol$new(
	first.name = "Hibiki",
    last.name  = "Ganaha",
    height     = height,
    weight     = 41,
    bust       = bust,
    waist      = waist,
    hip        = 80
  )
  
  expect_equal(
    my.ecr,
    MyIdol$effective.capsize()
  )
}
)
test_that("check substantial aspect ratio", {
  height <- 152
  bust   <- 83
  waist  <- 56
  hip    <- 80 
  my.sar <- (bust + waist + hip) * 10 / height

  MyIdol <- Idol$new(
    first.name = "Hibiki",
    last.name  = "Ganaha",
    height     = height,
    weight     = 41,
    bust       = bust,
    waist      = waist,
    hip        = 80
  )  

  expect_equal(
    my.sar,
    MyIdol$substantial.aspect()
  )
}
)
