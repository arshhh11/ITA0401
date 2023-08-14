library(dplyr)
library(caTools)  
library(glmnet)   
library(caret)    

data("iris")

iris_subset <- iris %>% select(Species, Petal.Length, Petal.Width)

set.seed(123)

split <- sample.split(iris_subset$Species, SplitRatio = 0.8)
train_data <- subset(iris_subset, split == TRUE)
test_data <- subset(iris_subset, split == FALSE)

log_model <- glm(Species ~ Petal.Length + Petal.Width, data = train_data, family = "binomial")

test_probs <- predict(log_model, newdata = test_data, type = "response")

predicted_classes <- ifelse(test_probs > 0.5, "versicolor", "setosa")

confusion <- confusionMatrix(predicted_classes, test_data$Species)

print(confusion)
