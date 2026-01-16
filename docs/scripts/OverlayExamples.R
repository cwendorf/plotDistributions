# plotDistributions
## Overlay Distribution Examples

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Overlay PDFs: Two t Distributions
overlay.pdf(list(
  list(name = "t df=5",  fns = c(qt, pt, dt), params = c(df = 5)),
  list(name = "t df=20", fns = c(qt, pt, dt), params = c(df = 20))
), main = "Two t Distributions")

### Overlay CDFs: t vs Normal
overlay.cdf(list(
  list(name = "t df=8", fns = c(qt, pt, dt), params = c(df = 8)),
  list(name = "Normal", fns = c(qnorm, pnorm, dnorm))
), main = "t vs z Distributions")
