lcm <- function(a, b) {
  return(abs(a * b) / gcd(a, b))
}

lcm_range <- function(n) {
  res <- 1
  for (i in 1:n) {
    res <- lcm(res, i)
  }
  return(res)
}

print(lcm_range(20))
