# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Exponential CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the exponential distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
exp.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., rate).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
exp.cdf(params = c(rate = 1))
exp.cdf(params = c(rate = 1), limits = c(.5, 2))
exp.cdf(params = c(rate = 1), probs = c(.1, .9))
```
