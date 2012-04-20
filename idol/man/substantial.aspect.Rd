\name{substantial.aspect}
\alias{substantial.aspect}
\title{Calculate substantial aspect ratio}
\arguments{
  \item{object}{idol object}
}
\description{
  This function calculate substantial aspect ratio of your
  idol This statistic represents her body shape.
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
my.idol.sbr <- MyIdol$substantial.aspect()
}
\keyword{body}
\keyword{shape}

