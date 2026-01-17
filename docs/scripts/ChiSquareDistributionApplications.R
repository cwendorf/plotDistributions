# plotDistributions
## Chi-Square Distribution Applications

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

## A researcher conducts a study with 25 participants and calculates the sample variance. The chi-square distribution describes the sampling distribution of the variance.

### What proportion of samples with N=25 would have a chi-square value less than 15?

chisq.pdf(params = c(df = 24), limits = c(0, 15))

### What proportion of samples with N=25 would have a chi-square value greater than 40?

chisq.pdf(params = c(df = 24), limits = c(40, 100))

### What proportion of samples with N=25 would have a chi-square value between 12 and 36?

chisq.pdf(params = c(df = 24), limits = c(12, 36))

## A goodness-of-fit test is conducted with 5 categories (df = 4).

### What chi-square value corresponds to the upper 5% of the distribution?

chisq.pdf(params = c(df = 4), probs = c(.95, 1))

### What is the probability of obtaining a chi-square value greater than 9.488?

chisq.pdf(params = c(df = 4), limits = c(9.488, 50))

### What is the probability of obtaining a chi-square value between 0.711 and 9.488?

chisq.pdf(params = c(df = 4), limits = c(0.711, 9.488))
