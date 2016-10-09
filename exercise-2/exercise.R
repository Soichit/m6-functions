# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  diff <- length(v2) - length(v1)
  sentence <- paste("The difference in lengths is ", abs(diff))
  return (sentence)
}

# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1, 2, 3)
v2 <- c(1, 2)
v3 <- c(3, 4)
v4 <- c(1, 2, 3, 4, 5)
CompareLength(v1, v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
### Bonus ###
# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference <- function(v1, v2) {
  diff <- length(v2) - length(v1)
  if (diff == 0) {
    return ("Your vectors are the same length")
  } else if (diff > 0) {
    vector.order <- "second"
    vector.name <- deparse(substitute(v2))
  } else if (diff < 0) {
    vector.order <- "first"
    vector.name <- deparse(substitute(v1))
  }
  vector.name <- paste0(vector.name, ",")
  sentence <- c("Your", vector.order, "vector,", vector.name, "is longer by", abs(diff), "elements")
  return (paste(sentence, collapse = ' '))
}


# Pass two vectors to your `DescribeDifference` function
DescribeDifference(v1, v2)
DescribeDifference(v2, v1)
DescribeDifference(v2, v3)
DescribeDifference(v4, v3)
