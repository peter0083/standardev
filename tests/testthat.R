library(testthat)
library(standardev)

context("calculating standard deviation")

test_that("standard_deviation calculates standard deviation from a vector", {
  x <- c(13, 23, 12, 44, 55)
  n <- length(x)
  mean = sum(x) / n
  ssq <- sum((x-mean)^2)
  stddev1 = sqrt(ssq/n)
  return(stddev1)

  test_output <- standard_deviation(x)

  expect_identical(standard_deviation(x), stddev1)
  expect_identical(test_output, stddev1)
})
