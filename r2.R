x <- 1:100
y <- matrix(1:200, ncol = 2)
z <- "Hello, world!"

objects <- ls()

for (obj in objects) {
  size <- object.size(get(obj))
  cat("Object:", obj, "\n")
  cat("Size:", size, "bytes\n")
  cat("-----------------------\n")
}

rm(x, y, z)