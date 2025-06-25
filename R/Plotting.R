# plotDistributions
## Plotting Helpers

#' Plot a Probability Density Function
#'
#' Internal plotting utility for visualizing a probability density function (PDF) with optional shaded regions and annotations.
#'
#' @param main The main title of the plot.
#' @param x A vector of x-values for the PDF curve.
#' @param y A vector of y-values for the PDF curve.
#' @param px Optional vector of x-values defining the shaded area.
#' @param py Optional vector of y-values corresponding to `px`.
#' @param area Optional numeric value representing the shaded area.
#' @param col Color for lines and text.
#' @param bg Background color for shaded area.
#' @noRd
plot.pdf <- function(main, x, y, px = NULL, py = NULL, area = NULL, col = "black", bg = "gray90") {
  par(mar = c(7, 5, 5, 2))
  plot(NULL, xlim = range(x), ylim = range(y), bty = "l", xlab = "", ylab = "Probability Density", main = main)
  mtext("Probability Density Function", padj = -1)
  if (length(px) == 1) {
    lines(c(min(px), min(px)), c(.05 * (max(y) - min(y)), min(py)), lty = "dashed", col = col)
    text(min(px), 0, round(min(px), 3), pos = 3, offset = -.25, col = col)
  }
  if (length(px) > 1) {
    polygon(px, py, col = bg, lty = 0)
    text(min(px), 0, round(min(px), 3), pos = 3, offset = -.25, col = col)
    text(max(px), 0, round(max(px), 3), pos = 3, offset = -.25, col = col)
    result <- paste("Shaded Area = ", round(area, 3))
    title(sub = result, col.sub = col)
  }
  lines(x, y, col = col)
}

#' Plot a Cumulative Distribution Function
#'
#' Internal plotting utility for visualizing a cumulative distribution function (CDF) with optional annotations and shaded differences.
#'
#' @param main The main title of the plot.
#' @param x A vector of x-values for the CDF curve.
#' @param y A vector of y-values for the CDF curve.
#' @param limits Optional vector of x-limits for vertical markers.
#' @param yy Optional y-values corresponding to `limits`.
#' @param difference Optional numeric value representing a difference in CDF values.
#' @param col Color for lines and text.
#' @noRd
plot.cdf <- function(main, x, y, limits = NULL, yy = NULL, difference = NULL, col = "black") {
  par(mar = c(7, 5, 5, 2))
  plot(NULL, bty = "l", xlim = range(x), ylim = c(0, 1), lwd = 2, xlab = "", ylab = "Cumulative Probability", main = main)
  mtext("Cumulative Distribution Function", padj = -1)
  if (!is.null(limits)) {
    lines(c(limits[1], limits[1]), c(.05 * (max(y) - min(y)), yy[1]), lty = "dashed", col = col)
    lines(c(limits[2], limits[2]), c(.05 * (max(y) - min(y)), yy[2]), lty = "dashed", col = col)
    text(limits[1], 0, round(limits[1], 3), pos = 3, offset = -.25, col = col)
    text(limits[2], 0, round(limits[2], 3), pos = 3, offset = -.25, col = col)
    lines(c(min(x) + .05 * (max(x) - min(x)), limits[1]), c(yy[1], yy[1]), lty = "dashed", col = col)
    lines(c(min(x) + .05 * (max(x) - min(x)), limits[2]), c(yy[2], yy[2]), lty = "dashed", col = col)
    text(min(x), yy[1], round(yy[1], 3), pos = 4, offset = -.25, col = col)
    text(min(x), yy[2], round(yy[2], 3), pos = 4, offset = -.25, col = col)
    result <- paste("Difference = ", round(difference, 3))
    if (!is.na(difference)) title(sub = result, col.sub = col)
  }
  lines(x, y, col = col)
}
