# plotDistributions
## Distribution Plots in Base R

### Normal Distribution

x=seq(-4.4,4.4,len=1000)
par(mar=c(7,5,5,2))
curve(dnorm(x,0,1),xlim=range(x),main="Normal Distribution",xlab="",ylab="Probability Density",bty="l") 


### Normal Distribution with Probability Range

lb=-4.400; ub=4.400
ll=1.000; ul=ub

x <- seq(lb,ub,len=1000)
par(mar=c(7,5,5,2))
curve(dnorm(x,0,1),xlim=c(lb,ub),main="Normal Distribution",xlab="",ylab="Probability Density",bty="l") 
seqx <- seq(ll,ul,0.01)
cord.x <- c(ll,seqx,ul) 
cord.y <- c(0,dnorm(seqx),0)
polygon(cord.x,cord.y,col='goldenrod')
area <- pnorm(ul,0,1)-pnorm(ll,0,1)
result <- paste("P(",ll,"< z <",ul,") = ",signif(area, digits=3))
title(sub=result)

### Student's Distribution

df=3

x=seq(-4.4,4.4,len=1000)
par(mar=c(7,5,5,2))
curve(dt(x,df),xlim=range(x),main="Student's Distribution",xlab="",ylab="Probability Density",bty="l") 

### Comparison of Student's Distributions with Various df

degf <- c(1, 3, 8, 30)
colors <- c("red", "blue", "darkgreen", "gold", "black")
labels <- c("df=1", "df=3", "df=8", "df=30", "normal")

x <- seq(-4.4, 4.4, length=1000)
y <- dnorm(x)
par(mar=c(7,5,5,2))
curve(dnorm(x,0,1),xlim=range(x),main="Comparison of Student's Distributions",xlab="",ylab="Probability Density",bty="l") 
for (i in 1:4) {lines(x, dt(x,degf[i]), col=colors[i])}
legend("topright", labels, bty="n",lty=c(1, 1, 1, 1, 1), col=colors)

### t Distribution with Probability Range

df=8
lb=qt(.0001,df); ub=qt(.9999,df)
ll=round(lb,3); ul=1.000

x <- seq(lb,ub,len=1000)
par(mar=c(7,5,5,2)) 
curve(dt(x,df),xlim=c(lb,ub),main="Student's t Distribution",xlab="",ylab="Probability Density",bty="l") 
seqx <- seq(ll,ul,0.01)
cord.x <- c(ll,seqx,ul) 
cord.y <- c(0,dt(seqx,df),0)
polygon(cord.x,cord.y,col='goldenrod')
area <- pt(ul,df)-pt(ll,df)
result <- paste("P(",ll,"< t <",ul,") = ", signif(area, digits=3))
title(sub=result)

### F Distribution

dfb=2
dfw=5

x <- seq(0,5,len=1000)
par(mar=c(7,5,5,2))
plot(NULL,xlim=range(x),ylim=c(0,2),bty="l",xlab="",ylab="Probability Density",main="F Distribution")
lines(x,df(x,df1=dfb,df2=dfw),col="black")

### Comparison of F Distributions with Various df

x <- seq(0,5,len=1000)
par(mar=c(7,5,5,2))
plot(NULL,xlim=range(x),ylim=c(0,2),bty="l",xlab="",ylab="Probability Density",main="Comparison of F Distributions")
lines(x,df(x,df1=1,df2=10),col="black")
lines(x,df(x,df1=2,df2=10),col="blue")
lines(x,df(x,df1=5,df2=10),col="green")
legend("topright",c("n1=1, n2=10","n1=2, n2=10","n1=5, n2=10"),col=c("black","blue","green"),lwd=1,bty="n")
