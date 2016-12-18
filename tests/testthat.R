library(testthat)
library(standardev)

context("calculating standard deviation")

test_that("standard_deviation calculates correct output", {
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


test_that("standard_deviation cannot an empty list/vector or 'Na' element as an input", {
  x <- c()
  expect_error(standard_deviation(x))
})

test_that("standard_deviation: input x has to be a numeric vector or list", {
  x <- c("a", 6, "q")
  expect_error(standard_deviation(x))
})

test_that("standard_deviation: input can be a column from a data frame", {
  x <- mtcars$cyl
  n <- length(x)
  mean = sum(x) / n
  ssq <- sum((x-mean)^2)
  stddev1 = sqrt(ssq/n)
  return(stddev1)
  testoutput <- standard_deviation(x)

  expect_identical(standard_deviation(x), stddev1)
  expect_identical(test_output, stddev1)
})
