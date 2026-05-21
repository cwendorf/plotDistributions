# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Exponential Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
exp.pdf(params = c(rate = 1))
```

![](figures/expPDF-1.png)<!-- -->

``` r
exp.pdf(params = c(rate = 1), limits = c(.5, 2))
```

![](figures/expPDF-2.png)<!-- -->

``` r
exp.pdf(params = c(rate = 1), probs = c(.2, .8))
```

![](figures/expPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
exp.cdf(params = c(rate = 1))
```

![](figures/expCDF-1.png)<!-- -->

``` r
exp.cdf(params = c(rate = 1), limits = c(.5, 2))
```

![](figures/expCDF-2.png)<!-- -->

``` r
exp.cdf(params = c(rate = 1), probs = c(.2, .8))
```

![](figures/expCDF-3.png)<!-- -->
