is_palindrome <- function(num) {
  num_str <- as.character(num)
  return(num_str == paste(rev(strsplit(num_str, NULL)[[1]]), collapse = ""))
}

largest_palindrome_product <- function() {
  max_palindrome <- 0
  for (i in 999:100) {
    for (j in i:100) {
      product <- i * j
      if (is_palindrome(product) && product > max_palindrome) {
        max_palindrome <- product
      }
    }
  }
  return(max_palindrome)
}

print(largest_palindrome_product())
