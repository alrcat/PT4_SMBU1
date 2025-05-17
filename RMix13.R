source("PT4.R")
Solve <- function() {
  Task("RMix13")
  d = GetF(Get(), c('School', 'Year', 'Fam'))
  filename = Get()
  # Use the PutF(table, filename) function to output
  # a table of type data.frame to a file named filename
  
  max = tapply(d$School, d$Year, max)

  res = data.frame(Year = as.integer(names(max)),School = as.integer(max))
  
  res = res[order(res$Year), ]
  
  PutF(res, filename)
  Show(d)

}


Start(Solve)
