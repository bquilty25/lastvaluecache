
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lastvaluecache

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/lastvaluecache)](https://CRAN.R-project.org/package=lastvaluecache)
<!-- badges: end -->

The goal of `lastvaluecache` is to provide an efficient way to cache the
results of the last evaluated expressions in R. This is particularly
useful for preserving the outputs of computationally expensive
operations. The package allows users to customize the number of cached
values and easily retrieve them without having to recompute.

## Installation

You can install the development version of lastvalues like so:

``` r
# Install development version from GitHub
# install.packages("devtools")
devtools::install_github("bquilty25/lastvaluecache")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(lastvaluecache)

# Run R code as usual
2 + 2
exp(1)
sin(pi / 2)

# Check the cached `.Last.value` objects
last_values

# > last_values
# [[1]]
# [1] 4
# 
# [[2]]
# [1] 2.718282
# 
# [[3]]
# [1] 1

# Set the maximum number of cached values
setMaxCachedValues(5)

# Get the maximum number of cached values
max_values <- getMaxCachedValues()
```
