smallest_prime_factor <- function(n) {
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(i)
    }
  }
  return(n)
}

find_largest_prime_factor <- function() {
  ques <- 600851475143
  while (TRUE) {
    smallest_factor <- smallest_prime_factor(ques)
    if (smallest_factor < ques) {
      ques <- ques / smallest_factor
    } else {
      return(ques)
    }
  }
}

print(find_largest_prime_factor())

