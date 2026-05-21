# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Exponential PDF

### Description

Generates a plot of the probability density function (PDF) for the exponential distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
exp.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., rate).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
exp.pdf(params = c(rate = 1))
exp.pdf(params = c(rate = 1), limits = c(.5, 2))
exp.pdf(params = c(rate = 1), probs = c(.1, .9))
```
