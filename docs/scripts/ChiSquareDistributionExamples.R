# plotDistributions
## Chi Square Distribution Examples

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Probability Density Function

chisq.pdf(params = c(df = 10))
chisq.pdf(params = c(df = 10), limits = c(10, Inf))
chisq.pdf(params = c(df = 10), probs = c(.95, 1))

### Cumulative Distribution Function

chisq.cdf(params = c(df = 10))
chisq.cdf(params = c(df = 10), limits = c(10, Inf))
chisq.cdf(params = c(df = 10), probs = c(.95, 1))
