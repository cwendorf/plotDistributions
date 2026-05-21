# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Wilcoxon Signed Rank Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
signrank.pdf(params = c(n = 8))
```

![](figures/signrankPDF-1.png)<!-- -->

``` r
signrank.pdf(params = c(n = 8), limits = c(8, 20))
```

![](figures/signrankPDF-2.png)<!-- -->

``` r
signrank.pdf(params = c(n = 8), probs = c(.2, .8))
```

![](figures/signrankPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
signrank.cdf(params = c(n = 8))
```

![](figures/signrankCDF-1.png)<!-- -->

``` r
signrank.cdf(params = c(n = 8), limits = c(8, 20))
```

![](figures/signrankCDF-2.png)<!-- -->

``` r
signrank.cdf(params = c(n = 8), probs = c(.2, .8))
```

![](figures/signrankCDF-3.png)<!-- -->
