# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Plot the CDF of the F Distribution

**Aliases:**

- `f.cdf`

### Description

Generates a plot of the cumulative distribution function (CDF) for the F distribution, optionally annotating cumulative probability differences between specified limits or quantiles.

### Usage

```r
f.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., df1, df2).
- **`limits`**: Optional numeric vector specifying the lower and upper bounds for annotations.
- **`probs`**: Optional numeric vector of probabilities to convert into bounds using the quantile function.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
f.cdf(params = c(df1 = 2, df2 = 10))
f.cdf(params = c(df1 = 2, df2 = 10), limits = c(3, Inf))
f.cdf(params = c(df1 = 2, df2 = 10), probs = c(.95, 1))
```

