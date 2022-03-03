# plotDistributions
## Graphing Discrete Distributions

plot.discrete <- function(dist, stat = c(0,1), params, section = "lower", strict = FALSE) {
  
  stat = round(stat)
  
  # Perform the approriate scales to center the distribution.
  mean = dist$init(params)[1]; var = dist$init(params)[2]
  lower_bound = max(0,round(-3*sqrt(var) + mean));
  upper_bound = round(3*sqrt(var) + mean) 
  
  # Builds data for graph
  x = seq(lower_bound,upper_bound,by=1)
  y = dist$density(x,params)
  ymax = max(y)+0.05

  # Creates Graph Title
  graphmain = paste(dist$name," \n")
    par(mar=c(7,5,5,2)) 

  # Evaluate based on sections, rewrite v5?
  if(section == "lower") {
    if(stat >= lower_bound) region = stat[[1]]-lower_bound+1
    else region = 0
    
    # Build lower tail shade if stat is within bounds.
    i = region-1*(strict[[1]] == 1 & stat >= lower_bound)
    j = abs(region - upper_bound)+1+1*(strict[[1]] == 1 & stat >= lower_bound)

    barplot(y, ylim = c(0, ymax), col=c(rep("gray90",i),rep("white",j)), main=graphmain, ylab="Probability")
    barplot(y, ylim = c(0, ymax), xlab = "Values", names.arg = x, col=c(rep("gray90",i),rep("white",j)), density=c(rep(3,i),rep(0,j)), add = TRUE)
    
    prob = dist$probability(stat-1*(strict[[1]] == 1),params)
    ineqsym = if(strict[[1]]==0){" \u2264 "}else{" < "}
    subheader = paste("Shaded Area = ",round(prob,3))
  }
  else if(section == "bounded") {
    disupper = upper = stat[[2]]; dislower = lower = stat[[1]]
    
    # Map the bounds
    if(upper > upper_bound){
      upper = upper_bound
      if(lower > upper_bound) lower = upper_bound
    }
    if(lower < lower_bound){
      lower = lower_bound
      if(upper < lower_bound) upper = lower_bound
    }

    # Calculate necessary adjustments.
    # Figure out whether the stat is outside of the graph display
    bounds_adjust = -1*((dislower < lower_bound & disupper < lower_bound) || (disupper > upper_bound & dislower > upper_bound))
    lower_adjust = 1*(lower_bound == lower & upper_bound != upper);  upper_adjust = 1*(upper_bound == upper & lower_bound != lower)
    # Adjust if inequalities are strict, while checking stat with graph display.
    strict_adjust = -1*(strict[[1]]==1 & bounds_adjust != -1 & lower_adjust != 1) - 1*(strict[[2]]==1 & bounds_adjust != -1 & upper_adjust != 1)

    # Build the grid.
    i = abs(lower-lower_bound) + 1*(strict[[1]]==1 & dislower >= lower_bound)
    j = abs(upper-lower) + 1 + strict_adjust + bounds_adjust
    k = abs(upper_bound-upper) + 1*(strict[[2]]==1 & disupper <= upper_bound)

    # Plot the distribution
    barplot(y, ylim = c(0, ymax), col=c(rep("white",i),rep("gray90",j),rep("white",k)), main=graphmain, ylab="Probability")
    barplot(y, ylim = c(0, ymax), xlab = "Values", names.arg = x, col=c(rep("white",i),rep("gray90",j), rep("white",k)), density=c(rep(0,i),rep(3,j),rep(0,k)), add = TRUE)
    
    # Generate subtitle
    prob = dist$probability(disupper-1*(strict[[2]]==1),params) - dist$probability(dislower-1*(strict[[1]]==0),params)
    if(prob < 0) {prob = 0}
    low_ineq = if(strict[[1]]==0) {" \u2264 "} else {" < "}
    upper_ineq = if(strict[[2]]==0) {" \u2264 "} else {" < "}
    subheader = paste("Shaded Area = ",round(prob,3))
  }
  else if(section == "upper") {
    span = upper_bound-lower_bound+1
    if(stat <= upper_bound & stat >= lower_bound) region = upper_bound-stat[[1]]+1
    else if(stat < lower_bound) region = span
    else region = 0

    i = abs(region - (upper_bound-lower_bound+1))+1*(strict[[1]]==1 & stat >= lower_bound) #region-span of graph
    j = region-1*(strict[[1]]==1 & stat <= upper_bound & stat >= lower_bound)

    barplot(y, ylim = c(0, ymax), col=c(rep("white",i),rep("gray90",j)), ylab = "Probability", main=graphmain)
    barplot(y, ylim = c(0, ymax), xlab = "Values", names.arg = x, col=c(rep("white",i),rep("gray90",j)), density=c(rep(0,i),rep(3,j)), add = TRUE)
    prob = 1-dist$probability(stat-1*(strict[[1]] == 0),params)
    ineqsym = if(strict[[1]]==0) {" \u2265 "} else {" > "}
    subheader = paste("Shaded Area = ",round(prob,3))
  }
  else if(section == "tails") #implemented in v4.0 
  {
    # Set separate stats
    lower_stat = stat[[1]]; upper_stat = stat[[2]]
    
    # Set strict values based on 1/0s or true/falses
    if(strict[[1]]) lower_strict = 1
    else lower_strict = 0
    if(strict[[2]]) upper_strict = 1
    else upper_strict = 0
    
    # Determine the span
    span = upper_bound-lower_bound + 1
    
    # Handle the case specific errors
    if(lower_stat >= lower_bound) lower_region = lower_stat - lower_bound + 1 - 1*(lower_strict==1)
    else if(lower_stat >= upper_bound) lower_region = span
    else lower_region = 0 #lower_stat < lower_bound
    
    if(upper_stat <= upper_bound & upper_stat >= lower_bound) 
          upper_region = upper_stat-lower_bound+1-1*(upper_strict==1)
    else upper_region = span #upper_stat < lower_bound
    
    # Builds counts
    i = lower_region
    j = upper_region-i-1+2*(upper_strict==1)
    k = span-i-j

    # Build graphs
    barplot(y, ylim = c(0, ymax), col=c(rep("gray90",i),rep("white",j),rep("gray90",k)), ylab = "Probability", main=graphmain )
    barplot(y, ylim = c(0, ymax), xlab = "Values", names.arg = x, col=c(rep("gray90",i),rep("white",j), rep("gray90",k)), density=c(rep(3,i),rep(0,j),rep(3,k)), add = TRUE)
    
    # Handle legend information
    prob = 1-dist$probability(upper_stat-1*(!upper_strict),params)+dist$probability(lower_stat-1*(lower_strict),params)
    upper_ineqsym = if(!upper_strict) {" \u2265 "} else {" > "}
    lower_ineqsym = if(!lower_strict) {" \u2264 "} else {" < "}
    subheader = paste("Shaded Area = ",round(prob,3))
  }
  else {stop("Section not specified. Please choose either lower, bounded, tails, or upper.") }

  title(sub=subheader)  
  mtext("Probability Density Function",padj=-2)
}
