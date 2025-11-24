# [`plotDistributions`](https://github.com/cwendorf/plotDistributions/)

## Normal Distribution Examples

- [Probability Density Function](#probability-density-function)
- [Cumulative Distribution Function](#cumulative-distribution-function)

------------------------------------------------------------------------

### Probability Density Function

Get Probability Density Function plots that specify no limits, numeric
limits, and probability limits, respectively.

``` r
norm.pdf()
```

![](figures/normPDF-1.png)<!-- -->

``` r
norm.pdf(limits=c(1,Inf))
```

![](figures/normPDF-2.png)<!-- -->

``` r
norm.pdf(probs=c(.025,.975))
```

![](figures/normPDF-3.png)<!-- -->

### Cumulative Distribution Function

Get Cumulative Distribution Function plots that specify no limits,
numeric limits, and probability limits, respectively.

``` r
norm.cdf()
```

![](figures/normCDF-1.png)<!-- -->

``` r
norm.cdf(limits=c(1,Inf))
```

![](figures/normCDF-2.png)<!-- -->

``` r
norm.cdf(probs=c(.025,.975))
```

![](figures/normCDF-3.png)<!-- -->
