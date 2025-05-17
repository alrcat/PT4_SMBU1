source("PT4.R")
Solve <- function() {
  Task("RTable9")
  d = GetCountries(Get())
  n1 = Get()
  n2 = Get()
  Show(d)
  
  WorldParts = sort(unique(d$WorldPart))
  result = data.frame(Name = character(), A = numeric())
  
  for (WPart in WorldParts) {
    select_countries = d[d$WorldPart == WPart & d$Population >= n1 & d$Population <= n2,]
    if (nrow(select_countries) > 0) {
      Apop = mean(select_countries$Population)
      Show(Apop)
    } else {
      Apop = 0.0
    }
    result = rbind(result, data.frame(WorldPart = WPart, A = Apop))
  }
  
  Put(result)
}


Start(Solve)
