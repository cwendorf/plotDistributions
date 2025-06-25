# plotDistributions
## Snedecors F Distribution

#' Plot the PDF of the F Distribution
#'
#' Generates a plot of the probability density function (PDF) for the F distribution, with optional shaded areas between specified limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., `df1`, `df2`).
#' @param limits Optional numeric vector specifying the lower and upper bounds for shading.
#' @param probs Optional numeric vector of probabilities to convert into bounds using the quantile function.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
f.pdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.pdf(main = "F Distribution", fns = c(qf, pf, df), params = params, limits = limits, probs = probs)
  do.call(plot.pdf, c(calc, ...))
}

#' Plot the CDF of the F Distribution
#'
#' Generates a plot of the cumulative distribution function (CDF) for the F distribution, optionally annotating cumulative probability differences between specified limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., `df1`, `df2`).
#' @param limits Optional numeric vector specifying the lower and upper bounds for annotations.
#' @param probs Optional numeric vector of probabilities to convert into bounds using the quantile function.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
f.cdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.cdf(main = "F Distribution", fns = c(qf, pf, df), params = params, limits = limits, probs = probs)
  do.call(plot.cdf, c(calc, ...))
}
