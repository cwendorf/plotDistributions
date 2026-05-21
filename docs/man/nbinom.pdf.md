# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Negative Binomial PDF

### Description

Generates a plot of the probability mass function (treated as a PDF) for the negative binomial distribution, with optional shaded area between specified limits or quantiles.

### Usage

```r
nbinom.pdf(
  params = NULL,
  limits = c(NULL, NULL),
  probs = c(NULL, NULL),
  width = 0.8,
  ...
)
```

### Arguments

- **`params`**: Optional list of parameters for the distribution (e.g., size, prob).
- **`limits`**: Optional numeric vector of lower and upper bounds for shading a region under the curve.
- **`probs`**: Optional numeric vector of probabilities to be converted to limits.
- **`width`**: Width of the bars (default is 0.8). Values between 0 and 1 control the bar width.
- **`...`**: Additional graphical parameters passed to the plotting function.

### Value

A plot is produced. Invisibly returns NULL.

### Examples

```r
nbinom.pdf(params = c(size = 5, prob = .4))
nbinom.pdf(params = c(size = 5, prob = .4), limits = c(2, 8))
nbinom.pdf(params = c(size = 5, prob = .4), probs = c(.2, .8))
```
