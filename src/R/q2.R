max <- 4000000
sum <- 0
x <- 1
y <- 2

while (y <= max) {
  if (y %% 2 == 0) {
    sum <- sum + y
  }
  temp <- y
  y <- x + y
  x <- temp
}

print(sum)

