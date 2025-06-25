# plotDistributions
## Chi Square Distribution

#' Plot the PDF of the Chi-Squared Distribution
#'
#' Generates a plot of the probability density function (PDF) for the chi-squared distribution, with optional shading between specified limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., degrees of freedom `df`).
#' @param limits Optional numeric vector specifying the lower and upper bounds for shading.
#' @param probs Optional numeric vector of probabilities to convert into bounds using the quantile function.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
chisq.pdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.pdf(main = "Chi Square Distribution", fns = c(qchisq, pchisq, dchisq), params = params, limits = limits, probs = probs)
  do.call(plot.pdf, c(calc, ...))
}

#' Plot the CDF of the Chi-Squared Distribution
#'
#' Generates a plot of the cumulative distribution function (CDF) for the chi-squared distribution, with optional annotations showing cumulative probability differences between limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., degrees of freedom `df`).
#' @param limits Optional numeric vector specifying the lower and upper bounds for annotations.
#' @param probs Optional numeric vector of probabilities to convert into bounds using the quantile function.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
chisq.cdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.cdf(main = "Chi Square Range Distribution", fns = c(qchisq, pchisq, dchisq), params = params, limits = limits, probs = probs)
  do.call(plot.cdf, c(calc, ...))
}
