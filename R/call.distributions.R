## Call the different distributions

plot.beta <- function(stat = 1, alpha = 3, beta = 2, section = "lower") {
  plot.it('beta', stat = stat, list(alpha = alpha, beta = beta),section = section)
}
plot.binom <- function(stat = 1, size = 3, prob = .5, section = "lower", strict = FALSE) {
  plot.it('binom', stat = stat, list(size = size, prob = prob), section = section, strict=strict)
}
plot.cauchy <- function(stat = 1, location = 2, scale = 1, section = "lower") {
  plot.it('cauchy', stat = stat, list(location = location, scale = scale), section = section)
}
plot.chisq <- function(stat = 1, df = 3, section = "lower") {
  plot.it('chisq', stat = stat, list(df = df), section = section)
}
plot.exp <- function(stat = 1, theta = 1, section = "lower") {
  plot.it('exp', stat = stat, list(theta = theta), section = section)
}
plot.f <- function(stat = 1, df1 = 5, df2 = 4, section = "lower") {
  plot.it('f', stat = stat, list(df1 = df1, df2 = df2), section = section)
}
plot.gamma <- function(stat = 1, alpha = 1, theta = 1, section = "lower") {
  plot.it('gamma', stat = stat, list(alpha = alpha, theta = theta), section = section)
}
plot.geom <- function(stat = 1, prob = .3, section = "lower", strict = FALSE) {
  plot.it('geom', stat = stat, list(prob = prob), section = section, strict=strict)
}
plot.hyper <- function(stat = 1, m = 5, n = 4, k = 2, section = "lower", strict = FALSE) {
  plot.it('hyper', stat = stat, list(m = m, n = n, k = k), section = section, strict=strict)
}
plot.lnorm <- function(stat = 1, meanlog = 3, sdlog = 1, section = "lower") {
  plot.it('lnorm', stat = stat, list(meanlog = meanlog, sdlog = sdlog), section = section)
}
plot.logis <- function(stat = 1, location = 3, scale = 1, section = "lower") {
  plot.it('logis', stat = stat, list(location = location, scale = location), section = section)
}
plot.nbinom <- function(stat = 1, size = 6, prob = .5, section = "lower", strict = FALSE) {
  plot.it('nbinom', stat = stat, list(size = size, prob = prob), section = section, strict=strict)
}
plot.norm <- function(stat = 1, mu = 0, sd = 1, section = "lower") {
  plot.it('norm', stat = stat, list(mu = mu, sd = sd),section = section)
}
plot.pois <- function(stat = 1, lambda = 3.5, section = "lower", strict = FALSE) {
  plot.it('pois', stat = stat, list(lambda = lambda), section = section, strict=strict)
}
plot.t <- function(stat = 1, df = 3, section = "lower") {
  plot.it('t', stat = stat, list(df = df), section = section)
}
plot.unif <- function(stat = 1, a = 0, b = 1, section = "lower") {
  plot.it('unif', stat = stat, list(a = a, b = b), section = section)
}
plot.wilcox <- function(stat = 1, m = 7, n = 3, section = "lower") {
  plot.it('wilcox', stat = stat, list(m = m, n = n), section = section)
}
