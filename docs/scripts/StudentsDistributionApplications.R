# plotDistributions
## Student's t Distribution Applications

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

## A researcher tests whether a sample mean differs from a hypothesized population mean with N=20.

### What t value corresponds to the upper 5% of the distribution (one-tailed test)?

t.pdf(params = c(df = 19), probs = c(.95, 1))

### What is the probability of obtaining a t value greater than 1.729?

t.pdf(params = c(df = 19), limits = c(1.729, 8))

### What t values correspond to the middle 95% of the distribution (two-tailed test)?

t.pdf(params = c(df = 19), probs = c(.025, .975))

## A researcher conducts a paired-samples t test with 15 pairs of observations.

### What t value corresponds to the upper 2.5% of the distribution?

t.pdf(params = c(df = 14), probs = c(.975, 1))

### What is the probability of obtaining a t value greater than 2.145?

t.pdf(params = c(df = 14), limits = c(2.145, 8))

### What is the probability of obtaining a t value between -2.145 and 2.145?

t.pdf(params = c(df = 14), limits = c(-2.145, 2.145))

## A researcher conducts an independent-samples t test with N1=25 and N2=30.

### What t value corresponds to the upper 1% of the distribution?

t.pdf(params = c(df = 53), probs = c(.99, 1))

### What is the probability of obtaining a t value less than -2.672?

t.pdf(params = c(df = 53), limits = c(-8, -2.672))

### What is the probability of obtaining a t value between -2 and 2?

t.pdf(params = c(df = 53), limits = c(-2, 2))
