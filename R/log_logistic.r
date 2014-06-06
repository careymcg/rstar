#' Return values of log logistic function given vector of sizes 
#' 
#' @param size a vector of (n) size values
#' @param mu the mean of log logistic function
#' @param sd the standard deviation of the log logistic function
#' @return a vector of (n) values of the log logistic function corresponding to each of (n) size values
log_logistic <- function(size,mu,sd){
  log((1.0)/((1.0)+exp(-((size-mu)/sd))))
}
