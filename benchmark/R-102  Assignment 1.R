#benchmark example

 f <- function(n, x=1) for (i in 1:n) x=1/(1+x)
 g <- function(n, x=1) for (i in 1:n) x=(1/(1+x))
 h <- function(n, x=1) for (i in 1:n) x=(1+x)^(-1)
 j <- function(n, x=1) for (i in 1:n) x={1/{1+x}}
 k <- function(n, x=1) for (i in 1:n) x=1/{1+x}
 
 library(microbenchmark)
 
 microbenchmark(f(4,1), g(4,1), h(4,1), j(4,1), k(4,1), times = 5)
 
# install.packages("devtools")
# devtools::install_github("hadley/lineprof")
# sessionInfo()