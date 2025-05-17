source("PT4.R")
Solve <- function() {
  Task("RTable14")
  d = GetStudents(Get())
  c1 = Get()
  c2 = Get()
  Show(d)
  # Use PutNStudents(table) to output the size and contents of the table
  # (table must be of type data.frame and contain student information)
  ans = d[d$Class >= c1 & d$Class <= c2 & d$DevClub == "TRUE",]
  PutNStudents(ans)
}


Start(Solve)
