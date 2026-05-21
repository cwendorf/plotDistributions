# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Logistic PDF

### Description

Generates a plot of the probability density function (PDF) for the logistic distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
logis.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., location, scale).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
logis.pdf(params = c(location = 0, scale = 1))
logis.pdf(params = c(location = 0, scale = 1), limits = c(-1, 1))
logis.pdf(params = c(location = 0, scale = 1), probs = c(.1, .9))
```
