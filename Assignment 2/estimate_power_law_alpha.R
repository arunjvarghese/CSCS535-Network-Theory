estimate_alpha <- function(node_degrees, min_degree) {
  sum <- 0
  big_N <- 0
  for (x in node_degrees) {
    if (x >= min_degree) {
      big_N <- big_N + 1
      sum <- sum + log(x/(min_degree - (1/2)))
    }
  }
  alpha <- 1+(big_N*(1/sum))
  error <- (alpha-1)/sqrt(big_N)
  output <- paste0(round(alpha,2)," plus or minus ",round(error,2))
  return(output)
} 

problem <- list(16,17,10,26,13,14,28,45,10,12,12,10,136,16,25,36,12,14,22,10)
example <- list()

estimate_alpha(problem,10)


