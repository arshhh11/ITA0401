sonar_df <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  NAME = c("John", "Jane", "Bob", "Alice", "Mark"),
  OCCUPATION = c("Engineer", "Manager", "Technician", "co-worker", "Sales"),
  EMPLOYEE = c("Full-time", "Part-time", "Full-time", "Full-time", "Part-time")
)
str(sonar_df)
summary(sonar_df)
occ<-sonar_df$OCCUPATION
print(occ)
sonar_df$SALARY<-c(50000,60000,70000,40000,55000)
print(sonar_df)