
## Studentized Range Distribution Examples

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric limits, and probability limits, respectively.

```r
q.pdf(params=c(nmeans=2,df=10))
```

![](figures/qPDF-1.png)<!-- -->

```r
q.pdf(params=c(nmeans=2,df=10),limits=c(2))
```

![](figures/qPDF-2.png)<!-- -->

```r
q.pdf(params=c(nmeans=2,df=10),probs=c(.95,1))
```

![](figures/qPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits, numeric limits, and probability limits, respectively.

```r
q.cdf(params=c(nmeans=2,df=10))
```

![](figures/qCDF-1.png)<!-- -->

```r
q.cdf(params=c(nmeans=2,df=10),limits=c(2))
```

![](figures/qCDF-2.png)<!-- -->

```r
q.cdf(params=c(nmeans=2,df=10),probs=c(.95,1))
```

![](figures/qCDF-3.png)<!-- -->
