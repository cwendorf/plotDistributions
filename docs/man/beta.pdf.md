# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Beta PDF

### Description

Generates a plot of the probability density function (PDF) for the beta distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
beta.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., shape1, shape2).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
beta.pdf(params = c(shape1 = 2, shape2 = 5))
beta.pdf(params = c(shape1 = 2, shape2 = 5), limits = c(.2, .6))
beta.pdf(params = c(shape1 = 2, shape2 = 5), probs = c(.1, .9))
```
