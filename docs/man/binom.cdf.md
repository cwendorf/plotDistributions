# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Binomial CDF

### Description

Generates a plot of the cumulative distribution function (CDF) for the binomial distribution, with optional visual indicators of probability differences between specified limits or quantiles.

### Usage

```r
binom.cdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
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
binom.cdf(params = c(size = 10, prob = .5))
binom.cdf(params = c(size = 10, prob = .5), limits = c(4, 7))
binom.cdf(params = c(size = 10, prob = .5), probs = c(.2, .8))
```

