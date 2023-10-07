
## Chi Square Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
chisq.pdf(params=c(df=10))
```

![](figures/chisqPDF-1.png)<!-- -->

``` r
chisq.pdf(params=c(df=10),limits=c(10))
```

![](figures/chisqPDF-2.png)<!-- -->

``` r
chisq.pdf(params=c(df=10),probs=c(.95,1))
```

![](figures/chisqPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
chisq.cdf(params=c(df=10))
```

![](figures/chisqCDF-1.png)<!-- -->

``` r
chisq.cdf(params=c(df=10),limits=c(10))
```

![](figures/chisqCDF-2.png)<!-- -->

``` r
chisq.cdf(params=c(df=10),probs=c(.95,1))
```

![](figures/chisqCDF-3.png)<!-- -->
