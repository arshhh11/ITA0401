
library(reshape2)

data(ChickWeight)

ordered_data <- ChickWeight[order(ChickWeight$weight), ]
last_6_records <- tail(ordered_data, 6)
print(last_6_records)

melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

mean_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = mean)
print(mean_weight_by_diet)

calculate_mode <- function(x) {
  tbl <- table(x)
  mode_val <- as.numeric(names(tbl[tbl == max(tbl)]))
  return(mode_val)
}

mode_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = calculate_mode)
print(mode_weight_by_diet)
