# plotDistributions
## Graphing Continuous Distributions

plot.continuous <- function(dist, stat = c(0,1), params, section = "lower"){  
  # Perform the approriate scales to center the distribution.
  mean = dist$init(params)[[1]]; var = dist$init(params)[[2]]
  line_width = 1
  line_style = 0
  
  # Do we have a mean and variance to work with?
  if(is.numeric(var)) {
    lb = -3.5*sqrt(var) + mean; ub = 3.5*sqrt(var) + mean
    mean = signif(mean, digits=3); var = signif(var, digits=3)
  } #axis length
  else {
    lb = -4*params[[2]] + params[[1]]; ub = 4*params[[2]] + params[[1]]
  }
  
  if(mean=="Undefined"){
    cat("Warning: df2 < 2, mean is not able to be generated.\n")
  }
  
  # Special axes
  if(dist$name != "Normal Distribution" && 
     dist$name != "Student t Distribution" && 
     dist$name != "Cauchy Distribution" &&
     dist$name != "Wilcox Rank Sum Distribution")
  {
    if(var>1 && is.numeric(var)) {
      ub = .75*sqrt(var) + mean
    }
    else if(!is.numeric(var) && dist$name=="F Distribution") {
      ub=3
      cat("Warning: df2 < 4, variance is not able to be generated.\n")
    }
    else ub = 13*sqrt(var) + mean
    lb = -0.008 
    if(section=="tails") {
      cat("Warning: Abnormal request for tails condition supplied on nonsymmetric distribution.\n")
    }
  }
  
  # Creates the center title by concatenating various bits of information.
  graphmain = paste(dist$name," \n")
  
  # Generate the initial PDF and plot it.
  x = seq(lb,ub,length=500)
  y = dist$density(x,params)
  par(mar=c(7,5,5,2)) 
  plot(NULL, bty="l",lwd=2, xlim=range(x),ylim=range(y),
  col="black", type="l", xlab="", ylab="Probability Density", main=graphmain, axes=TRUE)
  
  # Evaluate based on section type. 
  if(section == "lower") {
    #handle cases outside of graph window
    if(lb > stat) {lb = stat}
    path = seq(lb,stat,.01)
    polygon(c(lb,path,stat), c(0,dist$density(path,params),0), col="gray90", lty=line_style, lwd=line_width, border="black")    
    prob = dist$probability(stat,params)
    subheader = paste("Shaded Area = ",round(prob,3))
  }
  else if(section == "bounded") {
    start = stat[[1]]; end = stat[[2]];
    path=seq(start,end,.01)
    polygon(c(start,path,end), c(0,dist$density(path,params),0), col="gray90", lty=line_style, lwd=line_width, border="black");   
    prob = dist$probability(end,params) - dist$probability(start,params)
    subheader = paste("Shaded Area = ",round(prob,3))
  }
  else if(section == "upper") {
    if(ub < stat){ub = stat}
    path = seq(stat,ub,.01)
    polygon(c(stat,path,ub), c(0,dist$density(path,params),0), col="gray90", lty=line_style, lwd=line_width, border="black")  
    prob = 1-dist$probability(stat,params)
    subheader = paste("Shaded Area = ",round(prob,3))
  }
  else if(section == "tails") {
    lower_stat = stat[[1]];upper_stat=stat[[2]];
    # Make sure we have the right stats
    if(lower_stat>upper_stat){
      hold = lower_stat
      lower_stat = upper_stat
      upper_stat = hold
    }
    # Handle cases outside of graph window
    if(ub < upper_stat) {ub = upper_stat}
    if(lb > lower_stat) {lb = lower_stat}
    
    # Generate lower area
    lower_path = seq(lb,lower_stat,.01)
    polygon(c(lb,lower_path,lower_stat), c(0,dist$density(lower_path,params),0), col="gray90", lty=line_style, lwd=line_width, border="black")    
        
    # Generate upper area
    upper_path = seq(upper_stat,ub,.01)
    polygon(c(upper_stat,upper_path,ub), c(0,dist$density(upper_path,params),0), col="gray90", lty=line_style, lwd=line_width, border="black")
    
    prob = 1-dist$probability(upper_stat,params)+dist$probability(lower_stat,params)
    subheader = paste("Shaded Area = ",round(prob,3))
  }
  else {
    stop("Section not specified. Please choose either lower, bounded, tails, or upper.")
  }

  lines(x,y,col="black")
  title(sub=subheader)  
  mtext("Probability Density Function",padj=-2)
}
