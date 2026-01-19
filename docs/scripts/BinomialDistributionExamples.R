# plotDistributions
## Binomial Distribution Examples

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Probability Density Function

binom.pdf(params = c(size = 10, prob = .5))
binom.pdf(params = c(size = 10, prob = .5), limits = c(4, 7))
binom.pdf(params = c(size = 10, prob = .5), probs = c(.2, .8))

### Cumulative Distribution Function

binom.cdf(params = c(size = 10, prob = .5))
binom.cdf(params = c(size = 10, prob = .5), limits = c(4, 7))
binom.cdf(params = c(size = 10, prob = .5), probs = c(.2, .8))
