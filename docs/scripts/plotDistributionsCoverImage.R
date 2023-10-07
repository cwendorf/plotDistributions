# plotDistributions
## plotDistributions Cover Image

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Normal Distribution

par(mfrow=c(1,2))
norm.pdf(limits=c(-1.645,1.645),col="darkblue",bg="cornsilk")
norm.cdf(probs=c(.05,.95),col="darkblue")
