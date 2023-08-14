set.seed(123)  # For reproducibility
sampled_letters <- sample(LETTERS, size = 100, replace = TRUE)
letter_factor <- factor(sampled_letters)

five_levels <- unique(letter_factor)[1:5]

print(five_levels)