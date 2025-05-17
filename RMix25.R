Solve <- function() {
  Task("RMix25")
  d = GetF(Get(), c('Fam', 'Debt', 'Num'))
  filename = Get()
  
  d$Entrance = (d$Num - 1L) %/% 36L + 1L
  
  res = tapply(d$Debt, d$Entrance, sum)
  res = data.frame(Entrance = as.integer(names(res)), Debt = round(res, 2))
  Show(res)
  res <- res[which.max(res$Debt), ]
  Show(res)
  
  PutF(res, filename)
}


Start(Solve)
