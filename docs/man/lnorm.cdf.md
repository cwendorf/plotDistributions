# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Log-Normal CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the log-normal distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
lnorm.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., meanlog, sdlog).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
lnorm.cdf(params = c(meanlog = 0, sdlog = 1))
lnorm.cdf(params = c(meanlog = 0, sdlog = 1), limits = c(.5, 2))
lnorm.cdf(params = c(meanlog = 0, sdlog = 1), probs = c(.1, .9))
```
