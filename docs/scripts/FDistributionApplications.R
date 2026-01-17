# plotDistributions
## F Distribution Applications

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

## A researcher conducts an ANOVA comparing 4 groups with 10 participants in each group.

### What F value corresponds to the upper 5% of the distribution?

f.pdf(params = c(df1 = 3, df2 = 36), probs = c(.95, 1))

### What is the probability of obtaining an F value greater than 2.866?

f.pdf(params = c(df1 = 3, df2 = 36), limits = c(2.866, 20))

### What is the probability of obtaining an F value between 1 and 4?

f.pdf(params = c(df1 = 3, df2 = 36), limits = c(1, 4))

## A researcher compares the variances of two populations with sample sizes of 21 and 16.

### What F value corresponds to the upper 1% of the distribution?

f.pdf(params = c(df1 = 20, df2 = 15), probs = c(.99, 1))

### What is the probability of obtaining an F value greater than 3.37?

f.pdf(params = c(df1 = 20, df2 = 15), limits = c(3.37, 20))

### What is the probability of obtaining an F value between 0.5 and 2.5?

f.pdf(params = c(df1 = 20, df2 = 15), limits = c(0.5, 2.5))
