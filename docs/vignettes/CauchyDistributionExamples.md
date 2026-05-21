# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Cauchy Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
cauchy.pdf(params = c(location = 0, scale = 1))
```

![](figures/cauchyPDF-1.png)<!-- -->

``` r
cauchy.pdf(params = c(location = 0, scale = 1), limits = c(-1, 1))
```

![](figures/cauchyPDF-2.png)<!-- -->

``` r
cauchy.pdf(params = c(location = 0, scale = 1), probs = c(.2, .8))
```

![](figures/cauchyPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
cauchy.cdf(params = c(location = 0, scale = 1))
```

![](figures/cauchyCDF-1.png)<!-- -->

``` r
cauchy.cdf(params = c(location = 0, scale = 1), limits = c(-1, 1))
```

![](figures/cauchyCDF-2.png)<!-- -->

``` r
cauchy.cdf(params = c(location = 0, scale = 1), probs = c(.2, .8))
```

![](figures/cauchyCDF-3.png)<!-- -->
