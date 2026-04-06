# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Chi-Squared PDF

### Description

Generates a plot of the probability density function (PDF) for the chi-squared distribution, with optional shading between specified limits or quantiles.

### Usage

```r
chisq.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., degrees of freedom df).
- **`limits`**: Optional numeric vector specifying the lower and upper bounds for shading.
- **`probs`**: Optional numeric vector of probabilities to convert into bounds using the quantile function.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
chisq.pdf(params = c(df = 10))
chisq.pdf(params = c(df = 10), limits = c(10, Inf))
chisq.pdf(params = c(df = 10), probs = c(.95, 1))
```

