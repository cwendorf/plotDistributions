
## `plotDistributions` | Visualizing Probability Distributions

[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.6.2-6666ff.svg)](https://cran.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

### Overview

**plotDistributions** is a small R package for plotting the probability density and cumulative distribution functions for various continuous distributions. It provides functionality to highlight probabilities and display critical values. 

<a href="https://github.com/cwendorf/plotDistributions">
<p align="center"><kbd><img src="docs/figures/plotDistributionsCoverImage.jpg"></kbd></p>
</a>

### Installation

This package is not currently on CRAN, but can be installed from GitHub:

``` r
install.packages("devtools")
devtools::install_github("cwendorf/plotDistributions")
library(plotDistributions)
```

If you do not wish a full install, the latest functions can be sourced directly from GitHub:

```r
source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")
```

### Usage

The [Examples for plotDistributions](./docs/README.md) provide basic documentation and examples of:

- Probability density and cummulative distribution functions for the Normal, Student's t, Chi Square, Studentized Range, and F distributions
- Examples with and without displayed critical values and highlighted probabilities

### Contact Me

- GitHub Issues: [https://github.com/cwendorf/plotDistributions/issues](https://github.com/cwendorf/plotDistributions/issues) 
- Author Email: [cwendorf@uwsp.edu](mailto:cwendorf@uwsp.edu)
- Author Homepage: [https://cwendorf.github.io](https://cwendorf.github.io)

### Citation

Wendorf, C.A. (2022). *plotDistributions: Visualizing probability distributions* [R Package]. [https://github.com/cwendorf/plotDistributions](https://github.com/cwendorf/plotDistributions)
