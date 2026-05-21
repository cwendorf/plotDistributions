# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Hypergeometric Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
hyper.pdf(params = c(m = 20, n = 30, k = 10))
```

![](figures/hyperPDF-1.png)<!-- -->

``` r
hyper.pdf(params = c(m = 20, n = 30, k = 10), limits = c(2, 6))
```

![](figures/hyperPDF-2.png)<!-- -->

``` r
hyper.pdf(params = c(m = 20, n = 30, k = 10), probs = c(.2, .8))
```

![](figures/hyperPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
hyper.cdf(params = c(m = 20, n = 30, k = 10))
```

![](figures/hyperCDF-1.png)<!-- -->

``` r
hyper.cdf(params = c(m = 20, n = 30, k = 10), limits = c(2, 6))
```

![](figures/hyperCDF-2.png)<!-- -->

``` r
hyper.cdf(params = c(m = 20, n = 30, k = 10), probs = c(.2, .8))
```

![](figures/hyperCDF-3.png)<!-- -->
