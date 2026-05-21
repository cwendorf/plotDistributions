# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Uniform PDF

### Description

Generates a plot of the probability density function (PDF) for the uniform distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
unif.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., min, max).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
unif.pdf(params = c(min = 0, max = 1))
unif.pdf(params = c(min = 0, max = 1), limits = c(.2, .8))
unif.pdf(params = c(min = 0, max = 1), probs = c(.1, .9))
```
