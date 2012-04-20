#' idol package
#' 
#' @name idol-package
#' @docType package
#' @aliases idol package-idol
#'
#' @author
#' Author: Itoshi NIKAIDO
#' Maintainer: Itoshi NIKAIDO. \email{dritoshi@@gmail.com}
#'
#' @import methods
#' @exportPattern '^[^\\.]'
NULL

#' Idols in 765 Production
#' 
#' A dataset containing idols with her official profile.
#' A data has three typical idols in 765 Production (Hibiki,
#' Azusa and Chihaya).
#' The variables are as follows:
#' 
#' \itemize{
#'   \item first.name. Her first name
#'   \item last.name. Her last name
#'   \item height. Her body height in cm
#'   \item weight. Her body weight in kg
#'   \item bust. Her top bust size in cm
#'   \item waist. Her waist size in cm
#'   \item hip. Her hip size in cm
#' }
#' 
#' @docType data
#' @keywords datasets
#' @name idolmaster765
#' @usage data(idolmaster765)
#' @format A data object with three idol objects
#' @references \url{http://www.bandainamcogames.co.jp/cs/list/idolmaster/}
NULL

#' Idol class
#'
#' Idol Class (description)
#'
#' \code{Idol} class is a reference class (details).
#'
#' @name Idol
#' @docType class
#'
#' @section Fields:
#' \itemize{
#'   \item first.name. Her first name
#'   \item last.name. Her last name
#'   \item height. Her body height in cm
#'   \item weight. Her body weight in kg
#'   \item bust. Her top bust size in cm
#'   \item waist. Her waist size in cm
#'   \item hip. Her hip size in cm
#' }
#' @section Contains:
#' NULL
#' @section Methods:
#' \itemize{
#'   \item effective.capsize
#'   \item substantial.aspect
#' }
#' @keywords documentation
Idol <- setRefClass("Idol",
  fields = list(
    first.name = "character",
    last.name  = "character",
    height     = "numeric",
    weight     = "numeric",
    bust       = "numeric",
    waist      = "numeric",
    hip        = "numeric"
  ),
  methods = list(
	effective.capsize = function() {
	    (bust - waist) * 100 / height
    },
    substantial.aspect = function() { 
	    (bust + waist + hip) * 10 / height
    }
  )
)

#' Calculate effective bust cap size ratio
#'
#' This function calculate effective bust cap size ratio of your idol
#' when you can know her cap size.
#'
#' @name effective.capsize
#' @param object idol object
#' @keywords bust
#' @examples
#' MyIdol     <- Idol$new(
#'   first.name = "Hibiki",
#'   last.name  = "Ganaha",
#'   height     = 152,
#'   weight     = 41,
#'   bust       = 83,
#'   waist      = 56,
#'   hip        = 80
#' )
#' my.idol.ecr <- MyIdol$effective.capsize()
NULL

#' Calculate substantial aspect ratio 
#'
#' This function calculate substantial aspect ratio of your idol
#' This statistic represents her body shape.
#'
#' @name substantial.aspect
#' @param object idol object
#' @keywords body shape
#' @examples
#' MyIdol     <- Idol$new(
#'   first.name = "Hibiki",
#'   last.name  = "Ganaha",
#'   height     = 152,
#'   weight     = 41,
#'   bust       = 83,
#'   waist      = 56,
#'   hip        = 80
#' )
#' my.idol.sbr <- MyIdol$substantial.aspect()
NULL
