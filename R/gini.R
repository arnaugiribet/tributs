#' Compute the Gini Coefficient
#'
#' @description
#' Computes the Gini coefficient based on (possibly weighted) sample data.
#'
#' @param x a vector containing at least non-negative elements
#' @param weights an optional vector of sample weights for x
#'
#' @return The Gini coefficient (between 0 and 1).
#' @export
#'
#' @examples
#' # generate vector (of incomes)
#' x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
#' # compute Gini coefficient
#' gini(x)
#' # generate a vector of weights.
#' w <- runif(n=length(x))
#' gini(x,w)
gini <- function(x, weights = rep(1, length = length(x))){
  reldist::gini(x,weights)
}
