# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Student's t PDF

### Description

Generates a plot of the probability density function (PDF) for the Student's t-distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
tpdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., degrees of freedom df).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
t.pdf(params = c(df = 5))
t.pdf(params = c(df = 5), limits = c(1, Inf))
t.pdf(params = c(df = 5), probs = c(.025, .975))
```

