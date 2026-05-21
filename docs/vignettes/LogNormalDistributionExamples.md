# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Log-Normal Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
lnorm.pdf(params = c(meanlog = 0, sdlog = 1))
```

![](figures/lnormPDF-1.png)<!-- -->

``` r
lnorm.pdf(params = c(meanlog = 0, sdlog = 1), limits = c(.5, 2))
```

![](figures/lnormPDF-2.png)<!-- -->

``` r
lnorm.pdf(params = c(meanlog = 0, sdlog = 1), probs = c(.2, .8))
```

![](figures/lnormPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
lnorm.cdf(params = c(meanlog = 0, sdlog = 1))
```

![](figures/lnormCDF-1.png)<!-- -->

``` r
lnorm.cdf(params = c(meanlog = 0, sdlog = 1), limits = c(.5, 2))
```

![](figures/lnormCDF-2.png)<!-- -->

``` r
lnorm.cdf(params = c(meanlog = 0, sdlog = 1), probs = c(.2, .8))
```

![](figures/lnormCDF-3.png)<!-- -->
