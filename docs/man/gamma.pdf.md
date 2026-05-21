# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Gamma PDF

### Description

Generates a plot of the probability density function (PDF) for the gamma distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
gamma.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., shape, rate).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
gamma.pdf(params = c(shape = 3, rate = 1))
gamma.pdf(params = c(shape = 3, rate = 1), limits = c(1, 4))
gamma.pdf(params = c(shape = 3, rate = 1), probs = c(.1, .9))
```
