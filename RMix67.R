source("PT4.R")
Solve <- function() {
  Task("RMix67")
  d = GetF(Get(), c('Class', 'Subject', 'Name', 'Mark'), 3)
  filename = Get()
  # Use the PutF(table, filename) function to output
  # a table of type data.frame to a file named filename
  
  students = d[d$Mark == 2, ]
  
  if (nrow(students) == 0) {
    PutF(data.frame(Result = "Students not found"), filename)
  } else {
    counts = aggregate(Mark ~ Class + Name, data = students, FUN = function(x) sum(x == 2))
    
    sorted = counts[order(-counts$Class, counts$Name), ]
    
    res = data.frame(Class = sorted$Class, Name = sorted$Name, Mark = sorted$Mark)
    
    PutF(res, filename)
  }
  Show(d)

}


Start(Solve)
