# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Negative Binomial CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the negative binomial distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
nbinom.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., size, prob).
- **`limits`**: Optional numeric vector of lower and upper bounds to evaluate and highlight on the CDF.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
nbinom.cdf(params = c(size = 5, prob = .4))
nbinom.cdf(params = c(size = 5, prob = .4), limits = c(2, 8))
nbinom.cdf(params = c(size = 5, prob = .4), probs = c(.2, .8))
```
