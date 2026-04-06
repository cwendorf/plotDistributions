# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Chi-Squared CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the chi-squared distribution, with optional annotations showing cumulative probability differences between limits or quantiles.

### Usage

```r
chisq.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., degrees of freedom df).
- **`limits`**: Optional numeric vector specifying the lower and upper bounds for annotations.
- **`probs`**: Optional numeric vector of probabilities to convert into bounds using the quantile function.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
chisq.cdf(params = c(df = 10))
chisq.cdf(params = c(df = 10), limits = c(10, Inf))
chisq.cdf(params = c(df = 10), probs = c(.95, 1))
```

