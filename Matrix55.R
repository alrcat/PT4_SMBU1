source("PT4.R")
Solve <- function() {
  Task("Matrix55")
  M = Get()
  N = Get()
  A = GetM(M,N)
  
  M = nrow(A)
  up = A[1:(M/2), ]
  low = A[(M/2 + 1):M, ]
  
  Put(rbind(low, up))
}


Start(Solve)
