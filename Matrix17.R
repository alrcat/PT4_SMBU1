source("PT4.R")
Solve <- function() {
  Task("Matrix17")
  M <- Get()
  N <- Get()
  A <- GetM(M,N)
  K <- Get()
  
  row <- A[K, ]

  Put(sum(row))
  Put(prod(row))
}


Start(Solve)
