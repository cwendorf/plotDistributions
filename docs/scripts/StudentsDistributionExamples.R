# plotDistributions
## Student's Distribution Examples

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Probability Density Function

t.pdf(params=c(df=5))
t.pdf(params=c(df=5),limits=c(1,Inf))
t.pdf(params=c(df=5),probs=c(.025,.975))

### Cumulative Distribution Function

t.cdf(params=c(df=5))
t.cdf(params=c(df=5),limits=c(1,Inf))
t.cdf(params=c(df=5),probs=c(.025,.975))
