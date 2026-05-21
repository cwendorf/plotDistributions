# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Geometric Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
geom.pdf(params = c(prob = .3))
```

![](figures/geomPDF-1.png)<!-- -->

``` r
geom.pdf(params = c(prob = .3), limits = c(1, 5))
```

![](figures/geomPDF-2.png)<!-- -->

``` r
geom.pdf(params = c(prob = .3), probs = c(.2, .8))
```

![](figures/geomPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
geom.cdf(params = c(prob = .3))
```

![](figures/geomCDF-1.png)<!-- -->

``` r
geom.cdf(params = c(prob = .3), limits = c(1, 5))
```

![](figures/geomCDF-2.png)<!-- -->

``` r
geom.cdf(params = c(prob = .3), probs = c(.2, .8))
```

![](figures/geomCDF-3.png)<!-- -->
