# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Weibull CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the Weibull distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
weibull.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., shape, scale).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
weibull.cdf(params = c(shape = 2, scale = 1))
weibull.cdf(params = c(shape = 2, scale = 1), limits = c(.5, 1.5))
weibull.cdf(params = c(shape = 2, scale = 1), probs = c(.1, .9))
```
