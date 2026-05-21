# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Gamma Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
gamma.pdf(params = c(shape = 3, rate = 1))
```

![](figures/gammaPDF-1.png)<!-- -->

``` r
gamma.pdf(params = c(shape = 3, rate = 1), limits = c(1, 4))
```

![](figures/gammaPDF-2.png)<!-- -->

``` r
gamma.pdf(params = c(shape = 3, rate = 1), probs = c(.2, .8))
```

![](figures/gammaPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
gamma.cdf(params = c(shape = 3, rate = 1))
```

![](figures/gammaCDF-1.png)<!-- -->

``` r
gamma.cdf(params = c(shape = 3, rate = 1), limits = c(1, 4))
```

![](figures/gammaCDF-2.png)<!-- -->

``` r
gamma.cdf(params = c(shape = 3, rate = 1), probs = c(.2, .8))
```

![](figures/gammaCDF-3.png)<!-- -->
