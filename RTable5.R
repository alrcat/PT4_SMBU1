source("PT4.R")
Solve <- function() {
  Task("RTable5")
  d = GetCountries(Get())
  wpart = Get()
  n1 = Get()
  n2 = Get()
  Show(d)
  # Use PutNCountries(table) to output the size and contents of the table
  # (table must be of type data.frame and contain country information)

  
  ans = d[d$WorldPart == wpart & d$Population >= n1 & d$Population <= n2,]
  PutNCountries(ans[order(ans$Population),])
  
}


Start(Solve)
