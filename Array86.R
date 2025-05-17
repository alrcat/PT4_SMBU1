source("PT4.R")
Solve <- function() {
  Task("Array86")
  N = Get()
  A = GetV(N)
  K = Get()
  
  temp = A[1:K]
  A[1:(length(A) - K)] = A[(K + 1):length(A)]
  A[(length(A) - K + 1):length(A)] = temp
  Put(A)
}


Start(Solve)
