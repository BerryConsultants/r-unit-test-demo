source("../src/mysum.R", chdir = TRUE)
library(testthat)

test_that("my_sum sums 2 numeric inputs correctly", {
  expect_equal(4, my_sum(2, 2))
  expect_equal(3, my_sum(1, 2))
  expect_equal(3, my_sum(2, 1))
  expect_equal(0, my_sum(2, -2))
  expect_equal(5.7, my_sum(5.3, 0.4))
})

test_that("my_sum errors for non-numeric inputs", {
  expect_error(my_sum(NA, NA))
  expect_error(my_sum(1, NA))
  expect_error(my_sum(NA, 1))
  expect_error(my_sum(NULL, NULL))
  expect_error(my_sum(1, NULL))
  expect_error(my_sum(NULL, 1))
  expect_error(my_sum(1, '2'))
  expect_error(my_sum('2', 1))
})