# [`plotDistributions`](https://github.com/cwendorf/plotDistributions)

## Visualizing Probability Distributions

[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.6.2-6666ff.svg)](https://cran.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

### Overview

`plotDistributions` is a small R package for plotting the probability density and cumulative distribution functions for various continuous distributions. It provides functionality to highlight probabilities and display critical values. 

![Screenshot of plotDistributions Output](./docs/vignettes/figures/CoverImage.jpg)

### Installation

This package is not currently on CRAN, but can be installed and loaded using these R commands:

``` r
if (!require(remotes)) install.packages("remotes")
remotes::install_github("cwendorf/plotDistributions")
library(plotDistributions)
```

If you do not wish a full install, the latest functions can be made available using this R command:

```r
source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")
```

### Usage

This package includes the following documentation:

- [Introduction](./docs/README.md):  Overview of the package and links to all resources.
- [Reference](./docs/man/README.md): Documentation for all exported functions, including usage, arguments, and return values.
- [Articles](./docs/vignettes/README.md): Examples demonstrating how to use the package.

### Contact

- GitHub Issues: [https://github.com/cwendorf/plotDistributions/issues](https://github.com/cwendorf/plotDistributions/issues) 
- Author Email: [cwendorf@uwsp.edu](mailto:cwendorf@uwsp.edu)
- Author Homepage: [https://github.com/cwendorf](https://github.com/cwendorf)

### Citation

Wendorf, C.A. (2022). *plotDistributions: Visualizing probability distributions* [R Package]. [https://github.com/cwendorf/plotDistributions](https://github.com/cwendorf/plotDistributions)
