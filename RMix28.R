source("PT4.R")

Solve <- function() {
  Task("RMix28")
  d = GetF(Get(), c('Debt', 'Fam', 'Num'))
  filename = Get()
  
  Show(d)
  d$Floor = ((d$Num - 1L) %/% 4L) %% 9L + 1L
  
  debts = tapply(d$Debt, d$Floor, sum)
  people = tapply(d$Debt, d$Floor, function(x) sum(!is.na(x)))
  
  floors = 1:9
  res = data.frame(Floor = floors, Debts = rep(0.00, length(floors)), People = as.integer(rep(0, length(floors))))
  if(length(debts) > 0) {
    res$Debts[as.integer(names(debts))] = round(debts, 2)
    res$People[as.integer(names(people))] = as.integer(people)
  }
  
  res = res[order(-res$Floor), ]
  Show(res)
  
  PutF(res, filename)
}

Start(Solve)
