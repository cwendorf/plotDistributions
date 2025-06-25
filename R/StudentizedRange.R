# plotDistributions
## Studentized Range Distribution

#' Plot the PDF of the Studentized Range Distribution
#'
#' Generates a plot of the probability density function (PDF) for the Studentized range distribution, with optional shaded regions based on limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., degrees of freedom and number of means).
#' @param limits Optional numeric vector specifying the lower and upper bounds for shading.
#' @param probs Optional numeric vector of probabilities to convert into bounds using the quantile function.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
q.pdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.pdf(main = "Studentized Range Distribution", fns = c(qtukey, ptukey, dtukey), params = params, limits = limits, probs = probs)
  do.call(plot.pdf, c(calc, ...))
}

#' Plot the CDF of the Studentized Range Distribution
#'
#' Generates a plot of the cumulative distribution function (CDF) for the Studentized range distribution, optionally highlighting probability differences between specified limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., degrees of freedom and number of means).
#' @param limits Optional numeric vector specifying the lower and upper bounds for annotations.
#' @param probs Optional numeric vector of probabilities to convert into bounds using the quantile function.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
q.cdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.cdf(main = "Studentized Range Distribution", fns = c(qtukey, ptukey, dtukey), params = params, limits = limits, probs = probs)
  do.call(plot.cdf, c(calc, ...))
}
