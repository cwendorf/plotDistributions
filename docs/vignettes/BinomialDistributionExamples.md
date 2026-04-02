
## Binomial Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
binom.pdf(params = c(size = 10, prob = .4))
```

![](figures/binomPDF-1.png)<!-- -->

``` r
binom.pdf(params = c(size = 10, prob = .4), limits = c(4, 7))
```

![](figures/binomPDF-2.png)<!-- -->

``` r
binom.pdf(params = c(size = 10, prob = .4), probs = c(.2, .8))
```

![](figures/binomPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
binom.cdf(params = c(size = 10, prob = .4))
```

![](figures/binomCDF-1.png)<!-- -->

``` r
binom.cdf(params = c(size = 10, prob = .4), limits = c(4, 7))
```

![](figures/binomCDF-2.png)<!-- -->

``` r
binom.cdf(params = c(size = 10, prob = .4), probs = c(.2, .8))
```

![](figures/binomCDF-3.png)<!-- -->
