# plotDistributions
## Normal Distribution Examples in Base R

### Children's IQ scores are normally distributed with a
### mean of 100 and a standard deviation of 15. 

mean=100; sd=15

# What proportion of children are expected to have an IQ 
# Less than 80?

ll=0; ul=80

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)
par(mar=c(7,5,5,2))
curve(dnorm(x,mean,sd),xlim=range(x),main="Normal Distribution",xlab="",ylab="Probability Density",bty="l") 
seqx <- seq(ll,ul,0.01)
cord.x <- c(ll,seqx,ul) 
cord.y <- c(0,dnorm(seqx,mean,sd),0)
polygon(cord.x,cord.y,col='goldenrod')
area <- pnorm(ul, mean, sd) - pnorm(ll, mean, sd)
result <- paste("P(",ll,"< IQ <",ul,") =",signif(area, digits=3))
title(sub=result)


# What proportion of children are expected to have an IQ 
# Greater than 120?

ll=120; ul=200

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)
par(mar=c(7,5,5,2))
curve(dnorm(x,mean,sd),xlim=range(x),main="Normal Distribution",xlab="",ylab="Probability Density",bty="l") 
seqx <- seq(ll,ul,0.01)
cord.x <- c(ll,seqx,ul) 
cord.y <- c(0,dnorm(seqx,mean,sd),0)
polygon(cord.x,cord.y,col='goldenrod')
area <- pnorm(ul, mean, sd) - pnorm(ll, mean, sd)
result <- paste("P(",ll,"< IQ <",ul,") =",signif(area, digits=3))
title(sub=result)

# What proportion of children are expected to have an IQ 
# Between 80 and 120?

ll=80; ul=120

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)
par(mar=c(7,5,5,2))
curve(dnorm(x,mean,sd),xlim=range(x),main="Normal Distribution",xlab="",ylab="Probability Density",bty="l") 
seqx <- seq(ll,ul,0.01)
cord.x <- c(ll,seqx,ul) 
cord.y <- c(0,dnorm(seqx,mean,sd),0)
polygon(cord.x,cord.y,col='goldenrod')
area <- pnorm(ul, mean, sd) - pnorm(ll, mean, sd)
result <- paste("P(",ll,"< IQ <",ul,") =",signif(area, digits=3))
title(sub=result)


# What proportion of samples of N=10 are expected to have an IQ 
# Less than 90?

ll=0; ul=90
n=10; se=sd/sqrt(n)

x <- seq(-4,4,length=100)*se + mean
hx <- dnorm(x,mean,se)
par(mar=c(7,5,5,2))
curve(dnorm(x,mean,se),xlim=range(x),main="Normal Distribution",xlab="",ylab="Probability Density",bty="l") 
seqx <- seq(ll,ul,0.01)
cord.x <- c(ll,seqx,ul) 
cord.y <- c(0,dnorm(seqx,mean,se),0)
polygon(cord.x,cord.y,col='goldenrod')
area <- pnorm(ul, mean, se) - pnorm(ll, mean, se)
result <- paste("P(",ll,"< IQ <",ul,") =", signif(area, digits=3))
title(sub=result)

# What proportion of samples of N=10 are expected to have an IQ 
# Greater than 110?

ll=110; ul=200
n=10; se=sd/sqrt(n)

x <- seq(-4,4,length=100)*se + mean
hx <- dnorm(x,mean,se)
par(mar=c(7,5,5,2))
curve(dnorm(x,mean,se),xlim=range(x),main="Normal Distribution",xlab="",ylab="Probability Density",bty="l") 
seqx <- seq(ll,ul,0.01)
cord.x <- c(ll,seqx,ul) 
cord.y <- c(0,dnorm(seqx,mean,se),0)
polygon(cord.x,cord.y,col='goldenrod')
area <- pnorm(ul, mean, se) - pnorm(ll, mean, se)
result <- paste("P(",ll,"< IQ <",ul,") =",signif(area, digits=3))
title(sub=result)


# What proportion of samples of N=10 are expected to have an IQ 
# Between 90 and 110?

ll=90; ul=110
n=10; se=sd/sqrt(n)

x <- seq(-4.5,4.5,length=100)*se + mean
hx <- dnorm(x,mean,se)
par(mar=c(7,5,5,2))
curve(dnorm(x,mean,se),xlim=range(x),main="Normal Distribution",xlab="",ylab="Probability Density",bty="l") 
seqx <- seq(ll,ul,0.01)
cord.x <- c(ll,seqx,ul) 
cord.y <- c(0,dnorm(seqx,mean,se),0)
polygon(cord.x,cord.y,col='goldenrod')
area <- pnorm(ul, mean, se) - pnorm(ll, mean, se)
result <- paste("P(",ll,"< IQ <",ul,") =",signif(area, digits=3))
title(sub=result)
