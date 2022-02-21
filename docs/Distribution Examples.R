# Statistic for Psychologists

# Children's IQ scores are normally distributed with a
# mean of 100 and a standard deviation of 15. 

mean=100; sd=15

# What proportion of children are expected to have an IQ 
# Less than 80?

lb=0; ub=80

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
  main="Normal Distribution", axes=FALSE)
lines(x, hx)
axis(1, at=seq(40, 160, 20), pos=0) 

i <- x >= lb & x <= ub
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< IQ <",ub,") =",
   signif(area, digits=3))
mtext(result,3)


# What proportion of children are expected to have an IQ 
# Greater than 120?

lb=120; ub=200

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
  main="Normal Distribution", axes=FALSE)
lines(x, hx)
axis(1, at=seq(40, 160, 20), pos=0) 

i <- x >= lb & x <= ub
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< IQ <",ub,") =",
   signif(area, digits=3))
mtext(result,3)


# What proportion of children are expected to have an IQ 
# Between 80 and 120?

lb=80; ub=120

x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
  main="Normal Distribution", axes=FALSE)
lines(x, hx)
axis(1, at=seq(40, 160, 20), pos=0) 

i <- x >= lb & x <= ub
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< IQ <",ub,") =",
   signif(area, digits=3))
mtext(result,3)



# What proportion of samples of N=10 are expected to have an IQ 
# Less than 90?

lb=0; ub=90
n=10; se=sd/sqrt(n)

x <- seq(-4,4,length=100)*se + mean

hx <- dnorm(x,mean,se)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
  main="Normal Distribution", axes=FALSE)
lines(x, hx)
axis(1, at=seq(40, 160, 20), pos=0)

i <- x >= lb & x <= ub
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, se) - pnorm(lb, mean, se)
result <- paste("P(",lb,"< IQ <",ub,") =",
   signif(area, digits=3))
mtext(result,3)

# What proportion of samples of N=10 are expected to have an IQ 
# Greater than 110?

lb=110; ub=200
n=10; se=sd/sqrt(n)

x <- seq(-4,4,length=100)*se + mean

hx <- dnorm(x,mean,se)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
  main="Normal Distribution", axes=FALSE)
lines(x, hx)
axis(1, at=seq(40, 160, 20), pos=0)

i <- x >= lb & x <= ub
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, se) - pnorm(lb, mean, se)
result <- paste("P(",lb,"< IQ <",ub,") =",
   signif(area, digits=3))
mtext(result,3)


# What proportion of samples of N=10 are expected to have an IQ 
# Between 90 and 110?

lb=90; ub=110
n=10; se=sd/sqrt(n)

x <- seq(-4,4,length=100)*se + mean

hx <- dnorm(x,mean,se)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
  main="Normal Distribution", axes=FALSE)
lines(x, hx)
axis(1, at=seq(40, 160, 20), pos=0)

i <- x >= lb & x <= ub
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, se) - pnorm(lb, mean, se)
result <- paste("P(",lb,"< IQ <",ub,") =",
   signif(area, digits=3))
mtext(result,3)
 