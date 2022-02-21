

# Evaluates lower tail with equal to inequality.
plot.binom(stat = 1, size = 3, prob = 0.5, section = "lower", strict = FALSE) 

# Evaluates bounded region with lower bound equal to and upper bound strict inequality.
plot.binom(stat = c(1,2), size = 5, prob = 0.35, section = "bounded", strict = c(0,1))

# Evaluates upper tail with strict inequality.
plot.binom(stat = 1, size = 3, prob = 0.5, section = "upper", strict = TRUE)


# Evaluates lower tail.
plot.norm(stat = 1, mu = 4, sd = 5, section = "lower") 

# Evaluates bounded region.
plot.norm(stat = c(3,7), mu = 5, sd = 3, section = "bounded")

# Evaluates upper tail.
plot.norm(stat = 1, mu = 3, sd = 2, section = "upper")


# Evaluates lower tail.
plot.t(stat = -1, df = 15, section = "lower") 

# Evaluates bounded region.
plot.t(stat = c(-2,2), df = 15, section = "bounded") 

# Evaluates upper tail.
plot.t(stat = 1, df = 15, section = "upper") 


# Evaluates lower tail.
plot.f(stat = 1, df1 = 2, df2 = 4, section = "lower") 

# Evaluates bounded region.
plot.f(stat = c(3,5), df1 = 2, df2 = 4, section = "bounded") 

# Evaluates upper tail.
plot.f(stat = 1, df1 = 2, df2 = 4, section = "upper") 

