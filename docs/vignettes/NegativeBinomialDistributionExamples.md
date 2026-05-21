# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Negative Binomial Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
nbinom.pdf(params = c(size = 5, prob = .4))
```

![](figures/nbinomPDF-1.png)<!-- -->

``` r
nbinom.pdf(params = c(size = 5, prob = .4), limits = c(2, 8))
```

![](figures/nbinomPDF-2.png)<!-- -->

``` r
nbinom.pdf(params = c(size = 5, prob = .4), probs = c(.2, .8))
```

![](figures/nbinomPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
nbinom.cdf(params = c(size = 5, prob = .4))
```

![](figures/nbinomCDF-1.png)<!-- -->

``` r
nbinom.cdf(params = c(size = 5, prob = .4), limits = c(2, 8))
```

![](figures/nbinomCDF-2.png)<!-- -->

``` r
nbinom.cdf(params = c(size = 5, prob = .4), probs = c(.2, .8))
```

![](figures/nbinomCDF-3.png)<!-- -->
