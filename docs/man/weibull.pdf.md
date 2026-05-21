# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Weibull PDF

### Description

Generates a plot of the probability density function (PDF) for the Weibull distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
weibull.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., shape, scale).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
weibull.pdf(params = c(shape = 2, scale = 1))
weibull.pdf(params = c(shape = 2, scale = 1), limits = c(.5, 1.5))
weibull.pdf(params = c(shape = 2, scale = 1), probs = c(.1, .9))
```
