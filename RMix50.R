source("PT4.R")
Solve <- function() {
  Task("RMix50")
  d = GetF(Get(), c('Name', 'P1', 'P2', 'P3', 'School'), 1)
  filename = Get()
  # Use the PutF(table, filename) function to output
  # a table of type data.frame to a file named filename
  
  calcu <- function(row) {
    sum(as.integer(row))
  }
  
  d$Total = apply(d[, c('P1', 'P2', 'P3')], 1, calcu)
  
  top1 = sort(unique(d$Total), decreasing = TRUE)[1:2]
  top2 = d[d$Total %in% top1, c('Name', 'Total')]
  
  PutF(top2, filename)
  
  Show(d)

}


Start(Solve)
