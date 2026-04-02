# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Plot the PDF of the Normal Distribution

**Aliases:**

- `norm.pdf`

### Description

Generates a plot of the probability density function (PDF) for the normal distribution, with optional shaded regions defined by limits or quantiles.

### Usage

```r
norm.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., mean, sd).
- **`limits`**: Optional numeric vector specifying the lower and upper bounds for shading.
- **`probs`**: Optional numeric vector of probabilities to convert into bounds using the quantile function.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
norm.pdf()
norm.pdf(limits = c(1, Inf))
norm.pdf(probs = c(.025, .975))
```

