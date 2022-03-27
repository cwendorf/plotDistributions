# plotDistributions
## Specific Distributions

norm.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.pdf(main="Normal Distribution",fns=c(qnorm,pnorm,dnorm),params=params,limits=limits,probs=probs)
  do.call(plot.pdf,c(calc,...))
}

norm.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.cdf(main="Normal Distribution",fns=c(qnorm,pnorm,dnorm),params=params,limits=limits,probs=probs)
  do.call(plot.cdf,c(calc,...))
}

t.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.pdf(main="Student's Distribution",fns=c(qt,pt,dt),params=params,limits=limits,probs=probs)
  do.call(plot.pdf,c(calc,...))
}
t.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.cdf(main="Student's Distribution",fns=c(qt,pt,dt),params=params,limits=limits,probs=probs)
  do.call(plot.cdf,c(calc,...))
}

f.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.pdf(main="F Distribution",fns=c(qf,pf,df),params=params,limits=limits,probs=probs)
  do.call(plot.pdf,c(calc,...))
}
f.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.cdf(main="F Distribution",fns=c(qf,pf,df),params=params,limits=limits,probs=probs)
  do.call(plot.cdf,c(calc,...))
}

q.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.pdf(main="Studentized Range Distribution",fns=c(qtukey,ptukey,dtukey),params=params,limits=limits,probs=probs)
  do.call(plot.pdf,c(calc,...))
}
q.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.cdf(main="Studentized Range Distribution",fns=c(qtukey,ptukey,dtukey),params=params,limits=limits,probs=probs)
  do.call(plot.cdf,c(calc,...))
}

chisq.pdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.pdf(main="Chi Square Distribution",fns=c(qchisq,pchisq,dchisq),params=params,limits=limits,probs=probs)
  do.call(plot.pdf,c(calc,...))
}

chisq.cdf <- function(params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL),...) {
  calc <- calc.cdf(main="Chi Square Range Distribution",fns=c(qchisq,pchisq,dchisq),params=params,limits=limits,probs=probs)
  do.call(plot.cdf,c(calc,...))
}
