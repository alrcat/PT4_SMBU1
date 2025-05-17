source("PT4.R")

Solve <- function() {
  Task("RMix27")
  d = GetF(Get(), c('Fam', 'Num', 'Debt'))
  filename = Get()
  
  Show(d)
  d$Floor = ((d$Num - 1L) %/% 4L) %% 9L + 1L
  
  debts = tapply(d$Debt, d$Floor, sum)
  people = tapply(d$Debt, d$Floor, function(x) sum(!is.na(x)))
  
  res = data.frame(Debts = round(debts, 2), 
                   Floor = as.integer(names(debts)), 
                   People = as.integer(people))
  

  
  res = res[order(-res$Floor), ]
  Show(res)
  
  PutF(res, filename)
}

Start(Solve)
