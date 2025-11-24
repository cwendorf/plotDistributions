# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Student’s t Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
t.pdf(params=c(df=5))
```

![](figures/tPDF-1.png)<!-- -->

``` r
t.pdf(params=c(df=5),limits=c(1))
```

![](figures/tPDF-2.png)<!-- -->

``` r
t.pdf(params=c(df=5),probs=c(.025,.975))
```

![](figures/tPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
t.cdf(params=c(df=5))
```

![](figures/tCDF-1.png)<!-- -->

``` r
t.cdf(params=c(df=5),limits=c(1))
```

![](figures/tCDF-2.png)<!-- -->

``` r
t.cdf(params=c(df=5),probs=c(.025,.975))
```

![](figures/tCDF-3.png)<!-- -->
