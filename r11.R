get_unique_elements_string <- function(input_string) {
  unique_chars <- unique(strsplit(input_string, '')[[1]])
  return(unique_chars)
}
get_unique_elements_vector <- function(input_vector) {
  unique_numbers <- unique(input_vector)
  return(unique_numbers)
}
input_string <- readline("Enter a string: ")
input_vector <- as.numeric(strsplit(readline("Enter a vector of numbers (comma-separated): "), ',')[[1]])
unique_chars <- get_unique_elements_string(input_string)
cat("Unique elements of the string:", unique_chars, "\n")
unique_numbers <- get_unique_elements_vector(input_vector)
cat("Unique numbers of the vector:", unique_numbers, "\n")