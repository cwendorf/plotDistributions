# plotDistributions
## Density and Cumulative Distribution Examples

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

### Normal Distribution

norm.pdf()
norm.pdf(limits=c(1,2))
norm.pdf(probs=c(.025,.975))
norm.pdf(probs=c(.5,.9999))

norm.cdf()
norm.cdf(limits=c(1))
norm.cdf(limits=c(1,2))
norm.cdf(probs=c(.95))
norm.cdf(probs=c(.025,.975))


### Student's Distribution

t.pdf(params=c(df=5))
t.pdf(params=c(df=5),limits=c(1,2))
t.pdf(params=c(df=5),probs=c(.025,.975))

t.cdf(params=c(df=5))
t.cdf(params=c(df=5),limits=c(2))
t.cdf(params=c(df=5),limits=c(1,2))
t.cdf(params=c(df=5),probs=c(.95))
t.cdf(params=c(df=5),probs=c(.025,.975))

### F Distribution

f.pdf(params=c(df1=2,df2=10))
f.pdf(params=c(df1=2,df2=10),limits=c(3,50))
f.pdf(params=c(df1=2,df2=10),probs=c(.95,.99999))

f.cdf(params=c(df1=2,df2=10))
f.cdf(params=c(df1=2,df2=10),limits=c(3))
f.cdf(params=c(df1=2,df2=10),limits=c(3,50))
f.cdf(params=c(df1=2,df2=10),probs=c(.95))
f.cdf(params=c(df1=2,df2=10),probs=c(.95,.99999))

### Studentized Range Distribution

q.pdf(params=c(nmeans=2,df=10))
q.pdf(params=c(nmeans=2,df=10),limits=c(2,1000))
q.pdf(params=c(nmeans=2,df=10),probs=c(.95,.99999))

q.cdf(params=c(nmeans=2,df=10))
q.cdf(params=c(nmeans=2,df=2),limits=c(6.08536))
q.cdf(params=c(nmeans=2,df=10),limits=c(2,1000))
q.cdf(params=c(nmeans=3,df=10),probs=c(.95))
q.cdf(params=c(nmeans=2,df=10),probs=c(.95,.99999))

### Chi Square Distribution

chisq.pdf(params=c(df=10))
chisq.pdf(params=c(df=10),limits=c(10,40))
chisq.pdf(params=c(df=10),probs=c(.95,.99999))

chisq.cdf(params=c(df=10))
chisq.cdf(params=c(df=10),limits=c(10))
chisq.cdf(params=c(df=10),limits=c(10,40))
chisq.cdf(params=c(df=10),probs=c(.95))
chisq.cdf(params=c(df=10),probs=c(.95,.99999))
