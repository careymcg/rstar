#' Test an integer for primality with Fermat's little theorem.
#'
#' @param n the integer to test for primality
#' @return Whether the integer passes the Fermat test
 fermat.test <- function(n) {
 a <- floor(runif(1, min=1, max=n))
 a ^ n %% n == a
}