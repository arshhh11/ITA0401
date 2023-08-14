data("women")

height_factor <- cut(women$height, breaks = c(50, 60, 70, 80), labels = c("Short", "Medium", "Tall"))

head(height_factor)