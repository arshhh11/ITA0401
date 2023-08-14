
data("iris")

cat("Dimensions of the dataset:", dim(iris), "\n\n")
str(iris)
summary(iris)
cat("\nStandard Deviation of all features:\n")
sapply(iris[, 1:4], sd)

species_grouped <- aggregate(. ~ Species, data = iris, FUN = function(x) c(mean(x), sd(x)))
colnames(species_grouped)[2:9] <- c("Mean_Sepal.Length", "Mean_Sepal.Width", "Mean_Petal.Length", "Mean_Petal.Width",
                                    "SD_Sepal.Length", "SD_Sepal.Width", "SD_Petal.Length", "SD_Petal.Width")
print(species_grouped)

cat("\nQuantiles of Sepal Width:", quantile(iris$Sepal.Width), "\n")
cat("Quantiles of Sepal Length:", quantile(iris$Sepal.Length), "\n")

iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length), labels = FALSE)

avg_values <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean)
print(avg_values)

avg_mean_values <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = function(x) mean(mean(x)))
print(avg_mean_values)

pivot_table <- reshape2::dcast(avg_values, Species ~ Sepal.Length.Cate, value.var = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"))
print(pivot_table)
