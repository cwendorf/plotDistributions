# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Studentized Range PDF

### Description

Generates a plot of the probability density function (PDF) for the Studentized range distribution, with optional shaded regions based on limits or quantiles.

### Usage

```r
q.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., degrees of freedom and number of means).
- **`limits`**: Optional numeric vector specifying the lower and upper bounds for shading.
- **`probs`**: Optional numeric vector of probabilities to convert into bounds using the quantile function.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
q.pdf(params = c(nmeans = 2, df = 10))
q.pdf(params = c(nmeans = 2, df = 10), limits = c(2, Inf))
q.pdf(params = c(nmeans = 2, df = 10), probs = c(.95, 1))
```

