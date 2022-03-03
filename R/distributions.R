# plotDistributions
## Specific Distributions

norm.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  do.call(plot.pdf,calc.pdf(main="Normal Distribution",fns=c(qnorm,pnorm,dnorm),params=params,limits=limits,probs=probs))
}
norm.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  do.call(plot.cdf,calc.cdf(main="Normal Distribution",fns=c(qnorm,pnorm,dnorm),params=params,limits=limits,probs=probs))
}

t.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  do.call(plot.pdf,calc.pdf(main="Student's Distribution",fns=c(qt,pt,dt),params=params,limits=limits,probs=probs))
}
t.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  do.call(plot.cdf,calc.cdf(main="Student's Distribution",fns=c(qt,pt,dt),params=params,limits=limits,probs=probs))
}

f.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  do.call(plot.pdf,calc.pdf(main="F Distribution",fns=c(qf,pf,df),params=params,limits=limits,probs=probs))
}
f.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  do.call(plot.cdf,calc.cdf(main="F Distribution",fns=c(qf,pf,df),params=params,limits=limits,probs=probs))
}

q.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  do.call(plot.pdf,calc.pdf(main="Studentized Range Distribution",fns=c(qtukey,ptukey,dtukey),params=params,limits=limits,probs=probs))
}
q.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  do.call(plot.cdf,calc.cdf(main="Studentized Range Distribution",fns=c(qtukey,ptukey,dtukey),params=params,limits=limits,probs=probs))
}

