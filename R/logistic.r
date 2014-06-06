# Cstar Functions: Description and example for Logistic functions

# ------------------------------------------------------------------------------------------
# Definition of Logistic function:
logistic <- function(length,mu,sd){
  (1.0)/((1.0)+exp(-(length-mu)/sd))}

# Example for regular logistic curve:
len.vector <- c(76.3212, 94.9654, 114.906, 134.737, 154.402)
mu <- 110
sd <- 4

logistic(len.vector,mu,sd)

vals.length <- 50:160
vals.logistic <- logistic(vals.length,mu,sd)
plot(vals.length,vals.logistic,col="Red")

# ------------------------------------------------------------------------------------------
# Definition of Logistic95 function:
logistic95 <- function(length,s50,s95){
  seltmp <- 1/(1+(exp(-log(19)*((length-s50)/(s95-s50)))))
  selex <- seltmp/seltmp[length(seltmp)]
  return(selex)
  }

# Example for logistic95 curve:
length <- c(76.3212, 94.9654, 114.906, 134.737, 154.402)
s50  <- 50
s95 <- 145
logistic95(length,s50,s95)

vals.length <- 00:250
vals.logistic95 <- logistic95(vals.length,s50,s95)
plot(vals.length,vals.logistic95,col="Red")

# ------------------------------------------------------------------------------------------
# EOF.