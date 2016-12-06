# Standard deviation and error calculator
#
# This is a package which calcuates standard deviation and standard error for user.
#

#' Standard deivation calculator
#'
#' @param x a vector of numbers
#'
#' @return The standard deviation of the input
#' @export
#'
#' @examples
#' vector_NHL_player_salaries <- c(4060000, 6590000, 5640000)
#' # use this vector as an input for standard_deviation function#' standard_deviation(vector_NHL_player_salaries)
standard_deviation <- function(x) {
  n <- length(x)
  mean = sum(x) / n
  ssq <- sum((x-mean)^2)
  stddev = sqrt(ssq/n)
  return(stddev)
}

#' Standard error calculator
#'
#' @param x a vector of numbers
#'
#' @return The standard error of the input
#' @export
#'
#' @examples
#' vector_NHL_player_salaries <- c(4060000, 6590000, 5640000)
#' # use this vector as an input for standard_error function#' standard_error(vector_NHL_player_salaries)
standard_error <- function(x) {
  standard_deviation(x)/sqrt(length(x))
}
