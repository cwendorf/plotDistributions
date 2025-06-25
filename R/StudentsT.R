# plotDistributions
## Students Distribution

#' Plot the PDF of the Student's t-Distribution
#'
#' Generates a plot of the probability density function (PDF) for the Student's t-distribution, with optional shaded area between specified limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., degrees of freedom `df`).
#' @param limits Optional numeric vector of lower and upper bounds for shading a region under the curve.
#' @param probs Optional numeric vector of probabilities to be converted to limits.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
t.pdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.pdf(main = "Student's Distribution", fns = c(qt, pt, dt), params = params, limits = limits, probs = probs)
  do.call(plot.pdf, c(calc, ...))
}

#' Plot the CDF of the Student's t-Distribution
#'
#' Generates a plot of the cumulative distribution function (CDF) for the Student's t-distribution, with optional visual indicators of probability differences between specified limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., degrees of freedom `df`).
#' @param limits Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
#' @param probs Optional numeric vector of probabilities to be converted to limits.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
t.cdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.cdf(main = "Student's Distribution", fns = c(qt, pt, dt), params = params, limits = limits, probs = probs)
  do.call(plot.cdf, c(calc, ...))
}
