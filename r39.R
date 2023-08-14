data("USArrests")

summary_data <- summary(USArrests)
print(summary_data)

state_max_rape <- rownames(USArrests)[which.max(USArrests$Rape)]
print(paste("State with the largest total number of rape:", state_max_rape))

state_max_murder <- rownames(USArrests)[which.max(USArrests$Murder)]
state_min_murder <- rownames(USArrests)[which.min(USArrests$Murder)]
print(paste("State with the highest crime rate for murder:", state_max_murder))
print(paste("State with the lowest crime rate for murder:", state_min_murder))


correlation_matrix <- cor(USArrests)
print(correlation_matrix)

median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
print(paste("States with assault arrests more than median:", states_above_median_assault))

bottom_25_murder <- quantile(USArrests$Murder, probs = 0.25)
states_bottom_25_murder <- rownames(USArrests)[USArrests$Murder < bottom_25_murder]
print(paste("States in the bottom 25% of murder:", states_bottom_25_murder))

hist_density_murder <- ggplot(USArrests, aes(x = Murder)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  geom_density(aes(y = ..scaled..), fill = "red", alpha = 0.3) +
  labs(title = "Histogram and Density Plot of Murder Arrests",
       x = "Murder Arrests",
       y = "Density")

scatter_plot <- ggplot(USArrests, aes(x = Murder, y = UrbanPop, color = Assault)) +
  geom_point() +
  labs(title = "Relationship between Murder Arrest Rate, Urban Population, and Assault Arrest Rate",
       x = "Murder Arrests",
       y = "Urban Population",
       color = "Assault Arrests")

barplot_murder_rate <- ggplot(USArrests, aes(x = reorder(rownames(USArrests), -Murder), y = Murder)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  coord_flip() +
  labs(title = "Murder Rate by State",
       x = "State",
       y = "Murder Rate")

print(hist_density_murder)
print(scatter_plot)
print(barplot_murder_rate)
