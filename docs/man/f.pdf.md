# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Plot the PDF of the F Distribution

**Aliases:**

- `f.pdf`

### Description

Generates a plot of the probability density function (PDF) for the F distribution, with optional shaded areas between specified limits or quantiles.

### Usage

```r
f.pdf(params = NULL, limits = c(NULL, NULL), probs = c(NULL, NULL), ...)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., df1, df2).
- **`limits`**: Optional numeric vector specifying the lower and upper bounds for shading.
- **`probs`**: Optional numeric vector of probabilities to convert into bounds using the quantile function.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
f.pdf(params = c(df1 = 2, df2 = 10))
f.pdf(params = c(df1 = 2, df2 = 10), limits = c(3, Inf))
f.pdf(params = c(df1 = 2, df2 = 10), probs = c(.95, 1))
```

