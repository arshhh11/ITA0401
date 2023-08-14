data("airquality")
mean_temp <- sum(airquality$Temp) / nrow(airquality)

first_five_rows <- head(airquality, 5)

columns_to_keep <- !(colnames(airquality) %in% c("Temp", "Wind"))
airquality_without_temp_wind <- airquality[, columns_to_keep]

coldest_day <- airquality$Day[which.min(airquality$Temp)]

wind_gt_17_count <- sum(airquality$Wind > 17)
cat("i. Mean Temperature:", mean_temp, "\n")
cat("ii. First Five Rows:\n")
print(first_five_rows)
cat("iii. airquality without Temp and Wind Columns:\n")
print(airquality_without_temp_wind)
cat("iv. Coldest Day:", coldest_day, "\n")
cat("v. Days with Wind Speed > 17 mph:", wind_gt_17_count, "\n")
