# plotDistributions
## Wilcoxon Rank Sum Distribution

#' Plot the PDF of the Wilcoxon Rank Sum Distribution
#'
#' Generates a plot of the probability mass function (treated as a PDF) for the Wilcoxon rank sum distribution, with optional shaded area between specified limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., `m`, `n`).
#' @param limits Optional numeric vector of lower and upper bounds for shading a region under the curve.
#' @param probs Optional numeric vector of probabilities to be converted to limits.
#' @param width Width of the bars (default is 0.8). Values between 0 and 1 control the bar width.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
wilcox.pdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), width = 0.8, ...) {
  calc <- calc.pdf(main = "Wilcoxon Rank Sum Distribution", fns = c(qwilcox, pwilcox, dwilcox), params = params, limits = limits, probs = probs)
  do.call(plot.pdf, c(calc, list(width = width), ...))
}

#' Plot the CDF of the Wilcoxon Rank Sum Distribution
#'
#' Generates a plot of the cumulative distribution function (CDF) for the Wilcoxon rank sum distribution, with optional visual indicators of probability differences between specified limits or quantiles.
#'
#' @param params Optional list of parameters for the distribution (e.g., `m`, `n`).
#' @param limits Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
#' @param probs Optional numeric vector of probabilities to be converted to limits.
#' @param ... Additional graphical parameters passed to the plotting function.
#'
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
wilcox.cdf <- function(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...) {
  calc <- calc.cdf(main = "Wilcoxon Rank Sum Distribution", fns = c(qwilcox, pwilcox, dwilcox), params = params, limits = limits, probs = probs)
  do.call(plot.cdf, c(calc, ...))
}
