# plotDistributions
## Plot the Different Distributions Directly

plotBeta <- function(stat = 1, alpha = 3, beta = 2, section = "lower") {
  plotDistribution('beta', stat = stat, list(alpha = alpha, beta = beta),section = section)
}
plotBinom <- function(stat = 1, size = 3, prob = .5, section = "lower", strict = FALSE) {
  plotDistribution('binom', stat = stat, list(size = size, prob = prob), section = section, strict=strict)
}
plotCauchy <- function(stat = 1, location = 2, scale = 1, section = "lower") {
  plotDistribution('cauchy', stat = stat, list(location = location, scale = scale), section = section)
}
plotChisq <- function(stat = 1, df = 3, section = "lower") {
  plotDistribution('chisq', stat = stat, list(df = df), section = section)
}
plotExp <- function(stat = 1, theta = 1, section = "lower") {
  plotDistribution('exp', stat = stat, list(theta = theta), section = section)
}
plotF <- function(stat = 1, df1 = 5, df2 = 4, section = "lower") {
  plotDistribution('f', stat = stat, list(df1 = df1, df2 = df2), section = section)
}
plotGamma <- function(stat = 1, alpha = 1, theta = 1, section = "lower") {
  plotDistribution('gamma', stat = stat, list(alpha = alpha, theta = theta), section = section)
}
plotGeom <- function(stat = 1, prob = .3, section = "lower", strict = FALSE) {
  plotDistribution('geom', stat = stat, list(prob = prob), section = section, strict=strict)
}
plotHyper <- function(stat = 1, m = 5, n = 4, k = 2, section = "lower", strict = FALSE) {
  plotDistribution('hyper', stat = stat, list(m = m, n = n, k = k), section = section, strict=strict)
}
plotLnorm <- function(stat = 1, meanlog = 3, sdlog = 1, section = "lower") {
  plotDistribution('lnorm', stat = stat, list(meanlog = meanlog, sdlog = sdlog), section = section)
}
plotLogis <- function(stat = 1, location = 3, scale = 1, section = "lower") {
  plotDistribution('logis', stat = stat, list(location = location, scale = location), section = section)
}
plotNbinom <- function(stat = 1, size = 6, prob = .5, section = "lower", strict = FALSE) {
  plotDistribution('nbinom', stat = stat, list(size = size, prob = prob), section = section, strict=strict)
}
plotNorm <- function(stat = 1, mu = 0, sd = 1, section = "lower") {
  plotDistribution('norm', stat = stat, list(mu = mu, sd = sd),section = section)
}
plotPois <- function(stat = 1, lambda = 3.5, section = "lower", strict = FALSE) {
  plotDistribution('pois', stat = stat, list(lambda = lambda), section = section, strict=strict)
}
plotT <- function(stat = 1, df = 3, section = "lower") {
  plotDistribution('t', stat = stat, list(df = df), section = section)
}
plotUnif <- function(stat = 1, a = 0, b = 1, section = "lower") {
  plotDistribution('unif', stat = stat, list(a = a, b = b), section = section)
}
plotWilcox <- function(stat = 1, m = 7, n = 3, section = "lower") {
  plotDistribution('wilcox', stat = stat, list(m = m, n = n), section = section)
}
