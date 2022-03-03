# plotDistributions
## Distribution Plots in the Package


### Evaluates lower tail with equal to inequality.
plotBinom(stat = 1, size = 3, prob = 0.5, section = "lower", strict = FALSE) 

### Evaluates bounded region with lower bound equal to and upper bound strict inequality.
plotBinom(stat = c(1,2), size = 5, prob = 0.35, section = "bounded", strict = c(0,1))

### Evaluates upper tail with strict inequality.
plotBinom(stat = 1, size = 3, prob = 0.5, section = "upper", strict = TRUE)


### Evaluates lower tail.
plotNorm(stat = 1, mu = 4, sd = 5, section = "lower") 

### Evaluates bounded region.
plotNorm(stat = c(3,7), mu = 5, sd = 3, section = "bounded")

### Evaluates upper tail.
plotNorm(stat = 1, mu = 3, sd = 2, section = "upper")


### Evaluates lower tail.
plotT(stat = -1, df = 3, section = "lower") 

### Evaluates bounded region.
plotT(stat = c(-2.13,2.13), df = 15, section = "bounded") 

### Evaluates upper tail.
plotT(stat = 1, df = 15, section = "upper") 


### Evaluates lower tail.
plotF(stat = 1, df1 = 2, df2 = 5, section = "lower") 

### Evaluates bounded region.
plotF(stat = c(3,5), df1 = 2, df2 = 5, section = "bounded") 

### Evaluates upper tail.
plotF(stat = 3.4, df1 = 2, df2 = 5, section = "upper") 
