source("PT4.R")
Solve <- function() {
  Task("Array12")
  A = GetV()
  even = seq(2, length(A), by = 2)
  result = A[even]
  Put(result)
}
Start(Solve)

