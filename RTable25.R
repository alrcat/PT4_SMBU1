source("PT4.R")
Solve <- function() {
  Task("RTable25")
  d = GetStudents(Get())
  c = Get()
  k = Get()
  Show(d)
  # Use PutNStudents(table) to output the size and contents of the table
  # (table must be of type data.frame and contain student information)
  select_stus = d[d$Class == c,]
  
  PutNStudents(head(select_stus[order(-select_stus$Height), ], k))
}


Start(Solve)
