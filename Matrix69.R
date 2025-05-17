source("PT4.R")
Solve <- function() {
  Task("Matrix69")
  M = Get()
  N = Get()
  A = GetM(M,N)
  K = Get()
  
  M = nrow(A)
  new = rep(1, M)
  if (K == N) {
    res = cbind(A[, 1:K], new)
  } else {
    res = cbind(A[, 1:K], new, A[, (K+1):ncol(A)])
  }
  
  Put(res)
}


Start(Solve)
