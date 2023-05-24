
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tributs

<!-- badges: start -->
<!-- badges: end -->

The goal of tributs is to provide Direcció General de Tributs i Joc with
useful functions.

## Installation

You can install the development version of tributs from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("arnaugiribet/tributs")
```

## Usage

The tributs library contains several functions that intend to make our
lives easier. One of them is round2, which implements the rounding
convention *round away from zero*.

``` r
library(tributs)
x <- c(-1.5,-0.5,0.5,1.5)
round2(x)
#> [1] -2 -1  1  2
```

It also features implementations of the Gini concentration index or the
Kakwani index for the redistributive effect of a progressive tax system.

``` r
x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
gini2(x)
#> [1] 0.4620911

var1 <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
var2 <- c(487, 1284, 2092, 2865, 3599, 4261, 4901, 6182, 8597, 15583)
kakwani(var1,var2)
#> [1] -0.1613012
```
