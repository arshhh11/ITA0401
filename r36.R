library(ggplot2)
library(dplyr)

data(ChickWeight)

boxplot_plot <- ggplot(ChickWeight, aes(x = as.factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet", x = "Diet", y = "Weight")

histogram_plot <- ChickWeight %>%
  filter(Diet == 1) %>%
  ggplot(aes(x = weight)) +
  geom_histogram(binwidth = 20, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Weight for Diet-1", x = "Weight", y = "Frequency")

scatter_plot <- ggplot(ChickWeight, aes(x = Time, y = weight, color = as.factor(Diet))) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet", x = "Time", y = "Weight")

print(boxplot_plot)
print(histogram_plot)
print(scatter_plot)
