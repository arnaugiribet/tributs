#' Compute the Kakwani Coefficient
#'
#' @description
#' Computes the Kakwani index for the redistributive effect of a progressive tax system.
#'
#' @param var1 a numeric vector
#' @param var2 a numeric vector
#' @param weights an optional vector of sample weights
#'
#' @return The Kakwani coefficient.
#' @export
#'
#' @examples
#' # This is an example
#' # generate vectors (of gross income and post tax income)
#' var1 <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
#' var2 <- c(487, 1284, 2092, 2865, 3599, 4261, 4901, 6182, 8597, 15583)
#' # compute Kakwani coefficient
#' kakwani(var1,var2)
#' # generate a vector of weights.
#' weights <- runif(n=length(var1))
#' kakwani(var1,var2,weights)
kakwani <- function(var1,var2,weights=1){

  kakwani<-sum(((cumsum(var1*(weights/sum(weights))))/sum(var1)) -
        ((cumsum(var2*(weights/sum(weights))))/sum(var2)))/sum((weights/sum(weights)))

  return(kakwani)
}
