data(airquality)

if (is.data.frame(airquality)) {
  cat("airquality is a data frame.\n")
} else {
  cat("airquality is not a data frame.\n")
}

ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]

cleaned_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c('Solar.R', 'Wind'))]

print(cleaned_airquality)