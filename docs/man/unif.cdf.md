# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Uniform CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the uniform distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
unif.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., min, max).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
unif.cdf(params = c(min = 0, max = 1))
unif.cdf(params = c(min = 0, max = 1), limits = c(.2, .8))
unif.cdf(params = c(min = 0, max = 1), probs = c(.1, .9))
```
