source("PT4.R")
Solve <- function() {
  Task("RTable29")
  d = GetStudents(Get())
  h1 = Get()
  h2 = Get()
  Show(d)
  
  males = subset(d, Gender == "Male" & Height >= h1 & Height <= h2)
  females =  subset(d, Gender == "Female" & Height >= h1 & Height <= h2)
  Show(males)
  Show(females)
  
  KM = nrow(males)
  KF = nrow(females)
  
  Put(KM)
  Put(KF)
}


Start(Solve)
