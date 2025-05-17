source("PT4.R")

Solve <- function() {
  Task("RTable27")
  students <- GetStudents(Get())
  C <- Get()

  students_in_class <- students[students$Class == C, ]
  name_length_counts <- table(nchar(students_in_class$Name))
  result <- data.frame(Name_Length = as.integer(names(name_length_counts)),
                       Student_Count = as.integer(name_length_counts))
  result <- result[order(result$Name_Length, decreasing = TRUE), ]
  Put(result)
}

Start(Solve)
