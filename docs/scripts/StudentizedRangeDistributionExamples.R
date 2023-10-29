# plotDistributions
## Studentized Range Distribution Examples

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Probability Density Function

q.pdf(params = c(nmeans = 2, df = 10))
q.pdf(params = c(nmeans = 2, df = 10), limits = c(2, Inf))
q.pdf(params = c(nmeans = 2, df = 10), probs = c(.95, 1))

### Cumulative Distribution Function

q.cdf(params = c(nmeans = 2, df = 10))
q.cdf(params = c(nmeans = 2, df = 10), limits = c(2, Inf))
q.cdf(params = c(nmeans = 2, df = 10), probs = c(.95, 1))
