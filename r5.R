fibonacci <- function(n) {
  if (n <= 0) {
    return(NULL)
  } else if (n == 1) {
    return(0)
  } else if (n == 2) {
    return(1)
  } else {
    fib_seq <- numeric(n)
    fib_seq[1] <- 0
    fib_seq[2] <- 1
    for (i in 3:n) {
      fib_seq[i] <- fib_seq[i-1] + fib_seq[i-2]
    }
    return(fib_seq)
  }
}
first_10_fib <- fibonacci(10)
cat("First 10 Fibonacci numbers:", first_10_fib, "\n")
