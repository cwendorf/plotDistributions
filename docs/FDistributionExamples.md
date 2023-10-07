
## F Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
f.pdf(params=c(df1=2,df2=10))
```

![](figures/fPDF-1.png)<!-- -->

``` r
f.pdf(params=c(df1=2,df2=10),limits=c(3))
```

![](figures/fPDF-2.png)<!-- -->

``` r
f.pdf(params=c(df1=2,df2=10),probs=c(.95,1))
```

![](figures/fPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
f.cdf(params=c(df1=2,df2=10))
```

![](figures/fCDF-1.png)<!-- -->

``` r
f.cdf(params=c(df1=2,df2=10),limits=c(3))
```

![](figures/fCDF-2.png)<!-- -->

``` r
f.cdf(params=c(df1=2,df2=10),probs=c(.95,1))
```

![](figures/fCDF-3.png)<!-- -->
