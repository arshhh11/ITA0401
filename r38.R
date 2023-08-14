library(ggplot2)
library(dplyr)

data(Titanic)

titanic_df <- as.data.frame(Titanic)

barplot_class_survived <- ggplot(titanic_df, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "stack") +
  labs(title = "Survival Status by Passenger Class",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived")


barplot_class_gender_survived <- ggplot(titanic_df, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "stack") +
  facet_grid(. ~ Sex) +
  labs(title = "Survival Status by Passenger Class and Gender",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived")

histogram_age <- ggplot(titanic_df, aes(x = Age)) +
  geom_bar(binwidth = 5, fill = "skyblue", color = "black", stat = "count") +
  labs(title = "Distribution of Age",
       x = "Age",
       y = "Count")

print(barplot_class_survived)
print(barplot_class_gender_survived)
print(histogram_age)
