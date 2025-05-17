source("PT4.R")
Solve <- function() {
  Task("Array22")
  N = Get()
  A = GetV(N)
  K = Get()
  L = Get()
  

  Put(sum(A)-sum(A[K:L]))
  
}
Start(Solve)
