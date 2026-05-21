# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Beta Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
beta.pdf(params = c(shape1 = 2, shape2 = 5))
```

![](figures/betaPDF-1.png)<!-- -->

``` r
beta.pdf(params = c(shape1 = 2, shape2 = 5), limits = c(.2, .6))
```

![](figures/betaPDF-2.png)<!-- -->

``` r
beta.pdf(params = c(shape1 = 2, shape2 = 5), probs = c(.2, .8))
```

![](figures/betaPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
beta.cdf(params = c(shape1 = 2, shape2 = 5))
```

![](figures/betaCDF-1.png)<!-- -->

``` r
beta.cdf(params = c(shape1 = 2, shape2 = 5), limits = c(.2, .6))
```

![](figures/betaCDF-2.png)<!-- -->

``` r
beta.cdf(params = c(shape1 = 2, shape2 = 5), probs = c(.2, .8))
```

![](figures/betaCDF-3.png)<!-- -->
