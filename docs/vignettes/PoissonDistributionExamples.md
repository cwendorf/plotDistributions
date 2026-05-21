# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Poisson Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
pois.pdf(params = c(lambda = 4))
```

![](figures/poisPDF-1.png)<!-- -->

``` r
pois.pdf(params = c(lambda = 4), limits = c(2, 6))
```

![](figures/poisPDF-2.png)<!-- -->

``` r
pois.pdf(params = c(lambda = 4), probs = c(.2, .8))
```

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
pois.cdf(params = c(lambda = 4))
```

![](figures/poisCDF-1.png)<!-- -->

``` r
pois.cdf(params = c(lambda = 4), limits = c(2, 6))
```

![](figures/poisCDF-2.png)<!-- -->

``` r
pois.cdf(params = c(lambda = 4), probs = c(.2, .8))
```
