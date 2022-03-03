

qt(.975,df=10)
pt(2.228139,df=10)
qtukey(.95,nmeans=2,df=10)/sqrt(2)
ptukey(2.228139*sqrt(2),nmeans=2,df=10)
ptukey(2.228139*sqrt(2),nmeans=2,df=10,lower.tail=FALSE)


p05=qtukey(.95, nmeans=2, df=3:10)/sqrt(2)
p01=qtukey(.99, nmeans=2, df=3:10)/sqrt(2)
cbind(p05,p01)
p05=qtukey(.95, nmeans=3, df=3:10)/sqrt(2)
p01=qtukey(.99, nmeans=3, df=3:10)/sqrt(2)
cbind(p05,p01)
p05=qtukey(.95, nmeans=4, df=3:10)/sqrt(2)
p01=qtukey(.99, nmeans=4, df=3:10)/sqrt(2)
cbind(p05,p01)
p05=qtukey(.95, nmeans=5, df=3:10)/sqrt(2)
p01=qtukey(.99, nmeans=5, df=3:10)/sqrt(2)
cbind(p05,p01)

# CDF for Q
nm=2; dfe=10
lb=0; ub=qtukey(.9995,nmeans=nm,df=dfe)
x=seq(lb,ub,len=100)
y=ptukey(x,nmeans=nm,df=dfe)
par(mar=c(7,5,5,2))
plot(NULL,xlim=range(x),ylim=range(y),bty="l",xlab="",ylab="Cumulative Density",main="Studentized Range Distribution")
mtext("Cumulative Distribution Function",padj=-1)
lines(x,y,col="black")

# PDF for Q
nm=2; dfe=10
lb=0; ub=qtukey(.9995,nmeans=nm,df=dfe)
x=seq(lb,ub,len=100)
ll=0; ul=qtukey(.95,nmeans=nm,df=dfe)
y <- calc.deriv(ptukey,x,nmeans=nm,df=dfe)
par(mar=c(7,5,5,2))
plot(NULL,xlim=range(x),ylim=range(y),bty="l",xlab="",ylab="Probability Density",main="Studentized Range Distribution")
mtext("Probability Density Function",padj=-1)
seqx <- seq(ll,ul,0.01)
seqy <- calc.deriv(ptukey,seqx,nmeans=nm,df=dfe)
cx <- c(ll,seqx,ul)  
cy <- c(0,seqy,0)
polygon(cx,cy,col='gray90',lty=0)
lines(x,y,col="black")



# CDF for HSD
x=seq(0,6,len=100)*sqrt(2)
y=ptukey(x,nmeans=2,df=10)
plot(x,y,bty="l",type="l")
# PDF for HSD
x=seq(0,10,len=100)/sqrt(2)
y=calc.deriv(ptukey,x,nmeans=3,df=10)
plot(x,y,bty="l",type="l")
