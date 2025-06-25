# plotDistributions
## Calculation Helpers

#' Numerical Derivative Calculator
#'
#' Estimates the derivative of a function using a finite difference approach.
#'
#' @param fn A function of a single numeric argument.
#' @param p The point at which to evaluate the derivative.
#' @param ... Additional arguments passed to `fn`.
#' @noRd
calc.deriv <- function(fn, p, ...) {
  dif <- 1e-10
  p1 <- fn(p, ...)
  p2 <- fn(p + dif, ...)
  slope <- (p2 - p1) / dif
  return(slope)
}

#' Derivative of the Tukey Distribution Function
#'
#' Computes a numerical approximation to the derivative of `ptukey`.
#'
#' @param x Quantile.
#' @param nmeans Number of means.
#' @param df Degrees of freedom.
#' @param nranges Number of ranges.
#' @param lower.tail Logical; if `TRUE`, probabilities are `P[X <= x]`.
#' @param log.p Logical; if `TRUE`, probabilities are given as log(p).
#' @noRd
dtukey <- function(x, nmeans, df, nranges = 1, lower.tail = TRUE, log.p = FALSE) {
  calc.deriv(ptukey, x, nmeans, df, nranges, lower.tail, log.p)
}

#' Evaluate a Distribution Function with Parameters
#'
#' Calls a distribution function with a combination of x-values and additional parameters.
#'
#' @param fn The distribution function to evaluate.
#' @param x The input to the distribution function.
#' @param params A named list of additional parameters.
#' @noRd
eval.dist <- function(fn, x, params) {
  args <- c(list(x), as.list(params))
  do.call(fn, args)
}

#' Prepare Data for a Probability Density Plot
#'
#' Constructs x/y coordinates and optional shaded regions for a PDF plot.
#'
#' @param main The title for the plot.
#' @param fns A list of distribution-related functions (e.g., quantile, CDF, PDF).
#' @param params Optional list of parameters for the distribution.
#' @param limits Optional numeric vector specifying x-limits to shade.
#' @param probs Optional probabilities to convert into limits.
#' @noRd
calc.pdf <- function(main, fns, params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL)) {
  lb <- eval.dist(fns[[1]], .0005, params)
  ub <- eval.dist(fns[[1]], .9995, params)
  x <- seq(lb, ub, len = 1000)
  y <- eval.dist(fns[[3]], x, params)
  px <- NULL
  py <- NULL
  area <- NULL
  if (!is.null(probs)) {
    limits <- eval.dist(fns[[1]], probs, params)
  }
  if (!is.null(limits)) {
    limits[is.infinite(limits)] <- 99 * sign(limits[is.infinite(limits)])
    yy <- eval.dist(fns[[2]], limits, params)
    area <- round(yy[2] - yy[1], 3)
  }
  if (length(limits) == 1) {
    px <- limits
    py <- eval.dist(fns[[3]], limits, params)
  }
  if (length(limits) == 2) {
    xx <- seq(limits[1], limits[2], 0.01)
    px <- c(limits[1], xx, limits[2])
    py <- c(0, eval.dist(fns[[3]], xx, params), 0)
  }
  list(main = main, x = x, y = y, px = px, py = py, area = area)
}

#' Prepare Data for a Cumulative Distribution Plot
#'
#' Constructs x/y coordinates and optional difference annotations for a CDF plot.
#'
#' @param main The title for the plot.
#' @param fns A list of distribution-related functions (e.g., quantile, CDF).
#' @param params Optional list of parameters for the distribution.
#' @param limits Optional numeric vector specifying x-limits.
#' @param probs Optional probabilities to convert into limits.
#' @noRd
calc.cdf <- function(main, fns, params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL)) {
  lb <- eval.dist(fns[[1]], .0005, params)
  ub <- eval.dist(fns[[1]], .9995, params)
  x <- seq(lb, ub, len = 1000)
  y <- eval.dist(fns[[2]], x, params)
  yy <- NULL
  difference <- NULL
  if (!is.null(probs)) {
    limits <- eval.dist(fns[[1]], probs, params)
  }
  if (!is.null(limits)) {
    limits[is.infinite(limits)] <- 99 * sign(limits[is.infinite(limits)])
    yy <- eval.dist(fns[[2]], limits, params)
    difference <- round(yy[2] - yy[1], 3)
  }
  list(main = main, x = x, y = y, limits = limits, yy = yy, difference = difference)
}
