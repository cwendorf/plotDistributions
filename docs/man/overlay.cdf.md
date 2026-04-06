# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Overlay CDFs

### Description

Draws multiple cumulative distribution functions on the same axes using the existing calc/plot helpers.

### Usage

```r
overlay.cdf(
  distributions,
  main = "Overlayed CDFs",
  cols = NULL,
  legend.pos = "bottomright"
)
```

### Arguments

- **`distributions`**: A list where each element is a list containing name, fns (quantile, cdf, pdf/pmf functions), and optional params, limits, and probs entries for that distribution.
- **`main`**: Main title for the combined plot.
- **`cols`**: Optional vector of colors; recycled if shorter than the number of distributions.
- **`legend.pos`**: Position for the legend (passed to legend).

### Value

A plot is produced. Invisibly returns NULL.

