#' Round up to the nearest unit
#'
#' @param x A numeric vector to round up.
#' @param digits The desired number of decimals.
#'
#' @return A numeric vector.
#' @export
#'
#' @examples
#' x <- c(0.5,1.5,2.5)
#' round2(x, digits = 0)
round2 <- function(x, digits = 0) {
  posneg = sign(x)
  z = abs(x)*10^digits
  z = z + 0.5 + sqrt(.Machine$double.eps)
  z = trunc(z)
  z = z/10^digits
  z*posneg
}
