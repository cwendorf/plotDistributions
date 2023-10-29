# plotDistributions
## Normal Distribution Examples

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Probability Density Function

norm.pdf()
norm.pdf(limits = c(1, Inf))
norm.pdf(probs = c(.025, .975))

### Cumulative Distribution Function

norm.cdf()
norm.cdf(limits = c(1, Inf))
norm.cdf(probs = c(.025, .975))
