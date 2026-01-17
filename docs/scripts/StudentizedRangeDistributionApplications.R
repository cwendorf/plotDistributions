# plotDistributions
## Studentized Range Distribution Applications

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

## A researcher conducts a one-way ANOVA with 4 groups and 10 participants per group, then performs Tukey's HSD post-hoc tests.

### What q value corresponds to the upper 5% of the distribution?

q.pdf(params = c(nmeans = 4, df = 36), probs = c(.95, 1))

### What is the probability of obtaining a q value greater than 3.809?

q.pdf(params = c(nmeans = 4, df = 36), limits = c(3.809, 10))

### What is the probability of obtaining a q value between 2 and 5?

q.pdf(params = c(nmeans = 4, df = 36), limits = c(2, 5))

## A researcher compares 5 treatment means with df=45 for error.

### What q value corresponds to the upper 1% of the distribution?

q.pdf(params = c(nmeans = 5, df = 45), probs = c(.99, 1))

### What is the probability of obtaining a q value greater than 4.549?

q.pdf(params = c(nmeans = 5, df = 45), limits = c(4.549, 10))

### What is the probability of obtaining a q value between 3 and 6?

q.pdf(params = c(nmeans = 5, df = 45), limits = c(3, 6))

## A researcher conducts pairwise comparisons among 3 groups with df=24.

### What q value corresponds to the upper 5% of the distribution?

q.pdf(params = c(nmeans = 3, df = 24), probs = c(.95, 1))

### What is the probability of obtaining a q value greater than 3.532?

q.pdf(params = c(nmeans = 3, df = 24), limits = c(3.532, 10))

### What is the probability of obtaining a q value less than 2?

q.pdf(params = c(nmeans = 3, df = 24), limits = c(0, 2))
