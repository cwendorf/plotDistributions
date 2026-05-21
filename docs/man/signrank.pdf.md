# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Wilcoxon Signed Rank PDF

### Description

Generates a plot of the probability mass function (treated as a PDF) for the Wilcoxon signed rank distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
signrank.pdf(
  params = NULL,
  limits = c(NULL, NULL),
  probs = c(NULL, NULL),
  width = 0.8,
  ...
)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., n).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`width`**: Width of the bars (default is 0.8). Values between 0 and 1 control the bar width.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
signrank.pdf(params = c(n = 8))
signrank.pdf(params = c(n = 8), limits = c(8, 20))
signrank.pdf(params = c(n = 8), probs = c(.2, .8))
```
