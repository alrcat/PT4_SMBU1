source("PT4.R")
Solve <- function() {
  Task("RMix8")
  k = Get()
  d = GetF(Get(), c('Len', 'Code', 'Year', 'Month'))
  filename = Get()
  # Use the PutF(table, filename) function to output
  # a table of type data.frame to a file named filename
  
  data = d[d$Code == k, ]
  
  res = data.frame(Len = integer(), Year = integer(), Month = integer())
  
  for (year in unique(data$Year)) {
    ydata = data[data$Year == year & data$Len > 0, ]
    if (nrow(ydata) > 0) {
      min1 = min(ydata$Len)
      min2 = ydata[ydata$Len == min1, ]
      min2 = min2[order(min2$Month), ][1, ]
      res = rbind(res, min2)
    }
  }
  
  if (nrow(res) > 0) {
    res = res[order(res$Len, res$Year), ]
    outdata = data.frame(Len = res$Len, Year = res$Year, Month = res$Month)
    PutF(outdata, filename)
  } else {
    PutF(data.frame(Result = "No data"), filename)
  }
  Show(d)
}

Start(Solve)
