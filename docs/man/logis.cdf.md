# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Logistic CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the logistic distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
logis.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., location, scale).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
logis.cdf(params = c(location = 0, scale = 1))
logis.cdf(params = c(location = 0, scale = 1), limits = c(-1, 1))
logis.cdf(params = c(location = 0, scale = 1), probs = c(.1, .9))
```
