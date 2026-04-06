# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Studentized Range CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the Studentized range distribution, optionally highlighting probability differences between specified limits or quantiles.

### Usage

```r
q.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., degrees of freedom and number of means).
- **`limits`**: Optional numeric vector specifying the lower and upper bounds for annotations.
- **`probs`**: Optional numeric vector of probabilities to convert into bounds using the quantile function.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
q.cdf(params = c(nmeans = 2, df = 10))
q.cdf(params = c(nmeans = 2, df = 10), limits = c(2, Inf))
q.cdf(params = c(nmeans = 2, df = 10), probs = c(.95, 1))
```

