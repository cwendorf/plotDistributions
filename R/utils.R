# plotDistributions
## Utilities

### Calculations

calc.deriv <- function(fn,p,...){
  dif <- 1e-10
  p1 <- fn(p,...)
  p2 <- fn(p + dif,...)
  slope <- (p2 - p1) / dif
  return(slope)
}

dtukey <- function(x,nmeans,df,nranges=1,lower.tail=TRUE,log.p=FALSE) {
  calc.deriv(ptukey,x,nmeans,df,nranges,lower.tail,log.p)
}

eval.dist <- function(fn,x,params) {
  args <- c(list(x),as.list(params))
  do.call(fn,args)
}

calc.pdf <- function(main,fns,params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  lb <- eval.dist(fns[[1]],.0005,params); ub <- eval.dist(fns[[1]],.9995,params)
  x <- seq(lb,ub,len=1000); y <- eval.dist(fns[[3]],x,params)
  px <- NULL; py <- NULL; area <- NULL 
  if(!is.null(probs)) {
    limits <- eval.dist(fns[[1]],probs,params)}
  if(!is.null(limits)) { 
    limits[is.infinite(limits)] <- 99*sign(limits[is.infinite(limits)])
    yy <- eval.dist(fns[[2]],limits,params)
    area <- round(yy[2]-yy[1],3)}
  if(length(limits)==1) {
    px <- limits; py <- eval.dist(fns[[3]],limits,params)}
  if(length(limits)==2) {
    xx <- seq(limits[1],limits[2],0.01); px <- c(limits[1],xx,limits[2]); py <- c(0,eval.dist(fns[[3]],xx,params),0)}
  list(main=main,x=x,y=y,px=px,py=py,area=area)
}

calc.cdf <- function(main,fns,params=NULL,limits=c(NULL,NULL),probs=c(NULL,NULL)) {
  lb <- eval.dist(fns[[1]],.0005,params); ub <- eval.dist(fns[[1]],.9995,params)
  x <- seq(lb,ub,len=1000); y <- eval.dist(fns[[2]],x,params)
  yy <- NULL; difference <- NULL
  if(!is.null(probs)) {
    limits <- eval.dist(fns[[1]],probs,params)}
  if(!is.null(limits)) { 
    limits[is.infinite(limits)] <- 99*sign(limits[is.infinite(limits)]) 
    yy <- eval.dist(fns[[2]],limits,params)
    difference <- round(yy[2]-yy[1],3)}
  list(main=main,x=x,y=y,limits=limits,yy=yy,difference=difference)  
}

### Plotting

plot.pdf <- function(main,x,y,px=NULL,py=NULL,area=NULL,col="black",bg="gray90") {
  par(mar=c(7,5,5,2))
  plot(NULL,xlim=range(x),ylim=range(y),bty="l",xlab="",ylab="Probability Density",main=main)
  mtext("Probability Density Function",padj=-1)
  if(length(px)==1) { 
    lines(c(min(px),min(px)),c(.1*(max(y)-min(y)),min(py)),lty="dashed",col=col)
    text(min(px),0,round(min(px),3),pos=3,col=col)}     
  if(length(px)>1) { 
    polygon(px,py,col=bg,lty=0)
    text(min(px),0,round(min(px),3),pos=3,col=col)
    text(max(px),0,round(max(px),3),pos=3,col=col)
    result <- paste("Shaded Area = ",round(area,3))
    title(sub=result,col.sub=col)}         
  lines(x,y,col=col)
}

plot.cdf <- function(main,x,y,limits=NULL,yy=NULL,difference=NULL,col="black") {
  par(mar=c(7,5,5,2))
  plot(NULL,bty="l",xlim=range(x),ylim=c(0,1),lwd=2,xlab="",ylab="Cumulative Probability",main=main)
  mtext("Cumulative Distribution Function",padj=-1)
  if(!is.null(limits)) { 
    lines(c(limits[1],limits[1]),c(.1*(max(y)-min(y)),yy[1]),lty="dashed",col=col)
    lines(c(limits[2],limits[2]),c(.1*(max(y)-min(y)),yy[2]),lty="dashed",col=col)
    text(limits[1],0,round(limits[1],3),pos=3,col=col)
    text(limits[2],0,round(limits[2],3),pos=3,col=col)
    lines(c(min(x)+.13*(max(x)-min(x)),limits[1]),c(yy[1],yy[1]),lty="dashed",col=col)
    lines(c(min(x)+.13*(max(x)-min(x)),limits[2]),c(yy[2],yy[2]),lty="dashed",col=col)
    text(min(x),yy[1],round(yy[1],3),pos=4,col=col)
    text(min(x),yy[2],round(yy[2],3),pos=4,col=col)
    result <- paste("Difference = ",round(difference,3))
    if(!is.na(difference)) title(sub=result,col.sub=col)}
  lines(x,y,col=col)
}
