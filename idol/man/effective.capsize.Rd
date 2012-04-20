\name{effective.capsize}
\alias{effective.capsize}
\title{Calculate effective bust cap size ratio}
\arguments{
  \item{object}{idol object}
}
\description{
  This function calculate effective bust cap size ratio of
  your idol when you can know her cap size.
}
\examples{
MyIdol     <- Idol$new(
  first.name = "Hibiki",
  last.name  = "Ganaha",
  height     = 152,
  weight     = 41,
  bust       = 83,
  waist      = 56,
  hip        = 80
)
my.idol.ecr <- MyIdol$effective.capsize()
}
\keyword{bust}

