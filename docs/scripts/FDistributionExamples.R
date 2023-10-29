# plotDistributions
## F Distribution Examples

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Probability Density Function

f.pdf(params = c(df1 = 2, df2 = 10))
f.pdf(params = c(df1 = 2, df2 = 10), limits = c(3, Inf))
f.pdf(params = c(df1 = 2, df2 = 10), probs = c(.95, 1))

### Cumulative Distribution Function

f.cdf(params = c(df1 = 2, df2 = 10))
f.cdf(params = c(df1 = 2, df2 = 10), limits = c(3, Inf))
f.cdf(params = c(df1 = 2, df2 = 10), probs = c(.95, 1))
