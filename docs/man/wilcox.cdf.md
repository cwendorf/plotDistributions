# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Wilcoxon Rank Sum CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the Wilcoxon rank sum distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
wilcox.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., m, n).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
wilcox.cdf(params = c(m = 6, n = 7))
wilcox.cdf(params = c(m = 6, n = 7), limits = c(10, 25))
wilcox.cdf(params = c(m = 6, n = 7), probs = c(.2, .8))
```
