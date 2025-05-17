source("PT4.R")

Solve <- function() {
  Task("RMix80")
  
  D <- GetF(Get(), c('Price', 'Shop', 'Art'))
  E <- GetF(Get(), c('Art', 'Shop', 'Code'))
  
  Show(D)
  Show(E)
  
  filename = Get()
  
  data1 = merge(D, E, by = c('Art', 'Shop'))
  
  data1 = tapply(data1$Price, list(data1$Shop, data1$Art), sum, default = 0)
  
  data2 = as.data.frame(as.table(data1))
  names(data2) = c('Shop', 'Art', 'TotalPrice')
  
  combin = unique(D[, c('Shop', 'Art')])
  res = merge(combin, data2, by = c('Shop', 'Art'), all.x = TRUE)
  res$TotalPrice[is.na(res$TotalPrice)] <- 0
  res = res[order(res$Shop, res$Art), ]
  
  res$TotalPrice = as.integer(res$TotalPrice)
  
  Show(res)
  PutF(res, filename)
}

Start(Solve)
