# Example simple function to be tested
#
# 1. Call run_tests.sh using Tools > Shell... to run tests pertaining to this function.


my_sum <- function(x, y) {
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("Invalid inputs for my_sum")
  }
  return(x + y)
}