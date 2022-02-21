# Statistic for Psychologists
# Normal Distribution

y=seq(-4,4,.005)
norm.y=dnorm(y,0,1)
plot(y,norm.y,bty="l",cex=.1,pch=16)


# Students Distribution

y=seq(-4,4,.005)
df=3
stud.y=dt(y,df)
plot(y,stud.y,bty="l",cex=.1,pch=16)

# Display the Student's Distributions with Various df
# Compare to the normal distribution

x <- seq(-4, 4, length=100)
hx <- dnorm(x)

degf <- c(1, 3, 8, 30)
colors <- c("red", "blue", "darkgreen", "gold", "black")
labels <- c("df=1", "df=3", "df=8", "df=30", "normal")

plot(x, hx, type="l", lty=2, xlab="x value", ylab="Density", main="Comparison of t Distributions")

for (i in 1:4){
  lines(x, dt(x,degf[i]), lwd=2, col=colors[i])
}

legend("topright", inset=.05, title="Distributions", labels, lwd=2, lty=c(1, 1, 1, 1, 2), col=colors)

# Normal and Students Distribution

y=seq(-4,4,.005)
norm.y=dnorm(y,0,1)
plot(y,norm.y)
df=3
stud.y=dt(y,df)
lines(y,stud.y,col="blue")


# F Distribution

y=seq(0,16,.0001)
dfb=3
dfw=10
f.y=df(y,dfb,dfw)
plot(y,f.y)

# Display the F Distributions with Various df

par(mar=c(3,3,1,1))
x <- seq(0,5,len=1000)
plot(range(x),c(0,2),type="n",bty="l")
grid()
lines(x,df(x,df1=1,df2=1),col="black",lwd=2)
lines(x,df(x,df1=2,df2=1),col="blue",lwd=2)
lines(x,df(x,df1=5,df2=2),col="green",lwd=2)
lines(x,df(x,df1=100,df2=1),col="red",lwd=2)
lines(x,df(x,df1=100,df2=100),col="grey",lwd=2)
legend(2,1.5,legend=c("n1=1, n2=1","n1=2, n2=1","n1=5, n2=2","n1=100, n2=1","n1=100, n2=100"),col=c("black","blue","green","red","grey"),lwd=2,bty="n")


# Tukey Distribution

qtukey(.95,3,10)
ptukey(3.88,3,10)

curve(ptukey(x, nm = 6, df = 5), from = -1, to = 8, n = 101)

QTable <- expand.grid(alpha=c(0.01,0.05),
                      groups=seq(2,10,1),
                      df=seq(2,120,1))
QTable$QVal=qtukey(1-QTable$alpha,QTable$groups,df=QTable$df)
head(QTable)



# Other Versions

# Normal Distribution

lb=-4.400; ub=4.400
ll=1.000; ul=ub

cord.x <- c(ll,seq(ll,ul,0.01),ul) 
cord.y <- c(0,dnorm(seq(ll,ul,0.01)),0) 
par(mar=c(7,5,5,2))
curve(dnorm(x,0,1),xlim=c(lb,ub),main="Standard Normal Distribution",xlab="z score",ylab="Probability Density",bty="l") 
polygon(cord.x,cord.y,col='goldenrod')

area=pnorm(ul,0,1)-pnorm(ll,0,1)
result=paste("P(",ll,"< z <",ul,") = ",signif(area, digits=3))
mtext(result,3)

# t Distribution

df=10
lb=round(qt(.0001,df),digits=3); ub=round(qt(.9999,df),digits=3)
ll=lb; ul=1.000

cord.x <- c(ll,seq(ll,ul,0.01),ul) 
cord.y <- c(0,dt(seq(ll,ul,0.01),df),0) 
par(mar=c(7,5,5,2)) 
curve(dt(x,df),xlim=c(lb,ub),main="Student's t Distribution",xlab="t score",ylab="Probability Density",bty="l") 
polygon(cord.x,cord.y,col='goldenrod')

area <- pt(ul,df)-pt(ll,df)
result <- paste("P(",ll,"< t <",ul,") = ", signif(area, digits=3))
mtext(result,3)
