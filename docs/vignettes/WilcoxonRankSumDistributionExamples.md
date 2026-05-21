# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Wilcoxon Rank Sum Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
wilcox.pdf(params = c(m = 6, n = 7))
```

![](figures/wilcoxPDF-1.png)<!-- -->

``` r
wilcox.pdf(params = c(m = 6, n = 7), limits = c(10, 25))
```

![](figures/wilcoxPDF-2.png)<!-- -->

``` r
wilcox.pdf(params = c(m = 6, n = 7), probs = c(.2, .8))
```

![](figures/wilcoxPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
wilcox.cdf(params = c(m = 6, n = 7))
```

![](figures/wilcoxCDF-1.png)<!-- -->

``` r
wilcox.cdf(params = c(m = 6, n = 7), limits = c(10, 25))
```

![](figures/wilcoxCDF-2.png)<!-- -->

``` r
wilcox.cdf(params = c(m = 6, n = 7), probs = c(.2, .8))
```

![](figures/wilcoxCDF-3.png)<!-- -->
