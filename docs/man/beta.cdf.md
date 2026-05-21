# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Beta CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the beta distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
beta.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., shape1, shape2).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
beta.cdf(params = c(shape1 = 2, shape2 = 5))
beta.cdf(params = c(shape1 = 2, shape2 = 5), limits = c(.2, .6))
beta.cdf(params = c(shape1 = 2, shape2 = 5), probs = c(.1, .9))
```
