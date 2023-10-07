# plotDistributions
## Normal Distribution Applications

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

## Children's IQ scores are normally distributed with a mean of 100 and a standard deviation of 15. 

### What proportion of children are expected to have an IQ less than 80?

norm.pdf(params=c(mean=100,sd=15),limits=c(0,80))

### What proportion of children are expected to have an IQ greater than 120?

norm.pdf(params=c(mean=100,sd=15),limits=c(120,200))

### What proportion of children are expected to have an IQ between 80 and 120?

norm.pdf(params=c(mean=100,sd=15),limits=c(80,120))

### What proportion of samples of N=10 are expected to have an IQ less than 90?

norm.pdf(params=c(mean=100,sd=15/sqrt(10)),limits=c(0,90))

### What proportion of samples of N=10 are expected to have an IQ greater than 110?

norm.pdf(params=c(mean=100,sd=15/sqrt(10)),limits=c(110,200))

### What proportion of samples of N=10 are expected to have an IQ between 90 and 110?

norm.pdf(params=c(mean=100,sd=15/sqrt(10)),limits=c(90,110))
