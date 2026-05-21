# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Gamma CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the gamma distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
gamma.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., shape, rate).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
gamma.cdf(params = c(shape = 3, rate = 1))
gamma.cdf(params = c(shape = 3, rate = 1), limits = c(1, 4))
gamma.cdf(params = c(shape = 3, rate = 1), probs = c(.1, .9))
```
