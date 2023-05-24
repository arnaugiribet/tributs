#' Round away from zero
#'
#' @param x a numeric vector to round.
#' @param digits the desired number of decimals, by default 0.
#'
#' @return A numeric vector.
#' @export
#'
#' @examples
#' x <- c(-2.5,-1.5,-0.5,0.5,1.5,2.5)
#' round2(x, digits = 0)
round2 <- function(x, digits = 0) {
  posneg = sign(x)
  z = abs(x)*10^digits
  z = z + 0.5 + sqrt(.Machine$double.eps)
  z = trunc(z)
  z = z/10^digits
  z*posneg
}
