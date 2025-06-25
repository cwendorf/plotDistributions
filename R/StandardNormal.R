# plotDistributions
## Standard Normal Distribution

#' Plot the PDF of the Normal Distribution
#'
#' Generates a plot of the probability density function (PDF) for the normal distribution, with optional shaded regions defined by limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., `mean`, `sd`).
#' @param limits Optional numeric vector specifying the lower and upper bounds for shading.
#' @param probs Optional numeric vector of probabilities to convert into bounds using the quantile function.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
norm.pdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.pdf(main = "Normal Distribution", fns = c(qnorm, pnorm, dnorm), params = params, limits = limits, probs = probs)
  do.call(plot.pdf, c(calc, ...))
}

#' Plot the CDF of the Normal Distribution
#'
#' Generates a plot of the cumulative distribution function (CDF) for the normal distribution, optionally highlighting cumulative probability differences between bounds or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., `mean`, `sd`).
#' @param limits Optional numeric vector specifying the lower and upper bounds for annotations.
#' @param probs Optional numeric vector of probabilities to convert into bounds using the quantile function.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
norm.cdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.cdf(main = "Normal Distribution", fns = c(qnorm, pnorm, dnorm), params = params, limits = limits, probs = probs)
  do.call(plot.cdf, c(calc, ...))
}
