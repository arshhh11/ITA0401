library(dplyr)

data(ChickWeight)

ChickWeight$Diet <- as.factor(ChickWeight$Diet)

model <- lm(weight ~ Time + Diet, data = ChickWeight)

new_data <- data.frame(Time = 10, Diet = factor(1))  # Make sure to treat Diet as factor
predicted_weight <- predict(model, newdata = new_data)
print(paste("Predicted weight for Time=10 and Diet=1:", predicted_weight))

actual_weight <- ChickWeight %>%
  filter(Time == 10, Diet == 1) %>%
  select(weight) %>%
  pull()

error <- actual_weight - predicted_weight
print(paste("Error in prediction:", error))
