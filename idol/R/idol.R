#' idol
#' 
#' @name idol
#' @docType package
#' @aliases idol package-idol
#' @import methods
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

setClass("Idol",
  representation(
    first.name = "character",
    last.name  = "character",
    height     = "numeric",
    weight     = "numeric",
    bust       = "numeric",
    waist      = "numeric",
    hip        = "numeric"
  ),
  prototype(
    first.name = "Hibiki",
    last.name  = "Ganaha",
    height     = 152,
    weight     = 41,
    bust       = 83,
    waist      = 56,
    hip        = 80
  )
)
#' Calcuate effective bust cap size ratio
#'
#' This function calcuate effective bust cap size ratio of your idol
#' when you can know her cap size.
#'
#' @param object idol object
#' @keywords bust
#' @export
#' @examples
#' my.idol     <- new("Idol")
#' my.idol.ecr <- effective.capsize(my.idol)
setGeneric("effective.capsize", function(object) { standardGeneric("effective.capsize") })
setMethod("effective.capsize", "Idol",
  function(object) { (object@bust - object@waist) * 100 / object@height }
)
#' Calcuate substantial aspect ratio 
#'
#' This function calcuate substantial aspect ratio of your idol
#' This statistic represents her body shape.
#'
#' @param object idol object
#' @keywords body shape
#' @export
#' @examples
#' my.idol     <- new("Idol")
#' my.idol.sbr <- substantial.aspect(my.idol)
setGeneric("substantial.aspect", function(object) { standardGeneric("substantial.aspect") })
setMethod("substantial.aspect", "Idol",
  function(object) { (object@bust + object@waist + object@hip) * 10 / object@height }
)
