# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Hypergeometric CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the hypergeometric distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
hyper.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., m, n, k).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
hyper.cdf(params = c(m = 20, n = 30, k = 10))
hyper.cdf(params = c(m = 20, n = 30, k = 10), limits = c(2, 6))
hyper.cdf(params = c(m = 20, n = 30, k = 10), probs = c(.2, .8))
```
