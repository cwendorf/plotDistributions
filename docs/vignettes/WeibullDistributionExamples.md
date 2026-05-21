# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Weibull Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
weibull.pdf(params = c(shape = 2, scale = 1))
```

![](figures/weibullPDF-1.png)<!-- -->

``` r
weibull.pdf(params = c(shape = 2, scale = 1), limits = c(.5, 1.5))
```

![](figures/weibullPDF-2.png)<!-- -->

``` r
weibull.pdf(params = c(shape = 2, scale = 1), probs = c(.2, .8))
```

![](figures/weibullPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
weibull.cdf(params = c(shape = 2, scale = 1))
```

![](figures/weibullCDF-1.png)<!-- -->

``` r
weibull.cdf(params = c(shape = 2, scale = 1), limits = c(.5, 1.5))
```

![](figures/weibullCDF-2.png)<!-- -->

``` r
weibull.cdf(params = c(shape = 2, scale = 1), probs = c(.2, .8))
```

![](figures/weibullCDF-3.png)<!-- -->
