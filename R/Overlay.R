# plotDistributions
## Overlay Plot Helpers

#' Overlay multiple PDFs
#'
#' Draws multiple probability density (or mass) functions on the same axes using the existing calc/plot helpers.
#'
#' @param distributions A list where each element is a list containing `name`, `fns` (quantile, cdf, pdf/pmf functions), and optional `params`, `limits`, and `probs` entries for that distribution.
#' @param main Main title for the combined plot.
#' @param cols Optional vector of colors; recycled if shorter than the number of distributions.
#' @param legend.pos Position for the legend (passed to `legend`).
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
overlay.pdf <- function(distributions, main = "Overlayed PDFs", cols = NULL, legend.pos = "topright") {
  if (length(distributions) < 2) stop("Provide two or more distributions to overlay.")

  # prepare calculations for each distribution
  calcs <- lapply(distributions, function(d) {
    name <- if (!is.null(d$name)) d$name else "Series"
    fns <- d$fns
    params <- if (!is.null(d$params)) d$params else NULL
    limits <- if (!is.null(d$limits)) d$limits else c(NULL, NULL)
    probs <- if (!is.null(d$probs)) d$probs else c(NULL, NULL)
    list(name = name, calc = calc.pdf(main = "", fns = fns, params = params, limits = limits, probs = probs))
  })

  # determine plot ranges
  xs <- unlist(lapply(calcs, function(z) z$calc$x))
  ys <- unlist(lapply(calcs, function(z) z$calc$y))
  if (is.null(cols)) cols <- rep_len(c("darkred", "darkblue", "darkgoldenrod"), length(calcs))

  # base plot
  par(mar = c(7, 5, 5, 2))
  plot(NULL, xlim = range(xs), ylim = range(ys), bty = "l", xlab = "", ylab = "Probability Density", main = main)
  mtext("Probability Density Function", padj = -1)

  # add each curve
  for (i in seq_along(calcs)) {
    lines(calcs[[i]]$calc$x, calcs[[i]]$calc$y, col = cols[i], lwd = 2)
  }

  legend(legend.pos, legend = vapply(calcs, function(z) z$name, character(1)), col = cols, lwd = 2, bty = "n")
  invisible(NULL)
}

#' Overlay multiple CDFs
#'
#' Draws multiple cumulative distribution functions on the same axes using the existing calc/plot helpers.
#'
#' @param distributions A list where each element is a list containing `name`, `fns` (quantile, cdf, pdf/pmf functions), and optional `params`, `limits`, and `probs` entries for that distribution.
#' @param main Main title for the combined plot.
#' @param cols Optional vector of colors; recycled if shorter than the number of distributions.
#' @param legend.pos Position for the legend (passed to `legend`).
#' @return A plot is produced. Invisibly returns `NULL`.
#' @export
overlay.cdf <- function(distributions, main = "Overlayed CDFs", cols = NULL, legend.pos = "bottomright") {
  if (length(distributions) < 2) stop("Provide two or more distributions to overlay.")

  calcs <- lapply(distributions, function(d) {
    name <- if (!is.null(d$name)) d$name else "Series"
    fns <- d$fns
    params <- if (!is.null(d$params)) d$params else NULL
    limits <- if (!is.null(d$limits)) d$limits else c(NULL, NULL)
    probs <- if (!is.null(d$probs)) d$probs else c(NULL, NULL)
    list(name = name, calc = calc.cdf(main = "", fns = fns, params = params, limits = limits, probs = probs))
  })

  xs <- unlist(lapply(calcs, function(z) z$calc$x))
  ys <- unlist(lapply(calcs, function(z) z$calc$y))
  if (is.null(cols)) cols <- rep_len(c("darkred", "darkblue", "darkgoldenrod"), length(calcs))

  par(mar = c(7, 5, 5, 2))
  plot(NULL, bty = "l", xlim = range(xs), ylim = c(0, 1), lwd = 2, xlab = "", ylab = "Cumulative Probability", main = main)
  mtext("Cumulative Distribution Function", padj = -1)

  for (i in seq_along(calcs)) {
    lines(calcs[[i]]$calc$x, calcs[[i]]$calc$y, col = cols[i], lwd = 2)
  }

  legend(legend.pos, legend = vapply(calcs, function(z) z$name, character(1)), col = cols, lwd = 2, bty = "n")
  invisible(NULL)
}
