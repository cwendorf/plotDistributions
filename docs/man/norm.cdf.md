# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Normal CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the normal distribution, optionally highlighting cumulative probability differences between bounds or quantiles.

### Usage

```r
norm.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., mean, sd).
- **`limits`**: Optional numeric vector specifying the lower and upper bounds for annotations.
- **`probs`**: Optional numeric vector of probabilities to convert into bounds using the quantile function.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
norm.cdf()
norm.cdf(limits = c(1, Inf))
norm.cdf(probs = c(.025, .975))
```

