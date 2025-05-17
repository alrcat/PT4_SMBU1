source("PT4.R")
Solve <- function() {
  Task("RMix38")
  d = GetF(Get(), c('Price', 'Brand', 'Comp', 'Street'))
  filename = Get()
  # Use the PutF(table, filename) function to output
  # a table of type data.frame to a file named filename

  counts = tapply(d$Brand, d$Brand, length)
  Show(counts)
  
  res = data.frame(StaNum = as.integer(counts),Type = as.integer(names(counts)))

  res = res[order(res$StaNum, res$Type), ]
  
  PutF(res, filename)
  Show(d)

}


Start(Solve)
