---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# iso500

<!-- badges: start -->
[![R-CMD-check](https://github.com/emraher/iso500/workflows/R-CMD-check/badge.svg)](https://github.com/emraher/iso500/actions)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of iso500 is to download data for Turkey's Top 500 Industrial Enterprises.

## Installation

You can install iso500 from [Github](https://github.com/emraher/iso500) with:

``` r
remotes::install_github("iso500")
```

## Example

There's only one function in the package, `get_iso500(year, all = FALSE)`. You can use this function to download data.


```r
library(magrittr)
library(iso500)

# Following code will download 2018 data.
dt <- get_iso500(2018)

dt %>% 
  dplyr::glimpse()
#> Rows: 500
#> Columns: 39
#> $ Year                                                     <dbl> 2018, 2018, 20…
#> $ `Top 500 Rank 1999 - Ranking No`                         <dbl> 1, 2, 3, 4, 5,…
#> $ `Top 500 Rank 1998 - Ranking No`                         <dbl> 1, 2, 3, 5, 4,…
#> $ Enterprises                                              <chr> "TÜPRAŞ-Türkiy…
#> $ `Affiliated Chamber / Public`                            <chr> "Kocaeli Chamb…
#> $ `Ranking - Public`                                       <dbl> NA, NA, NA, NA…
#> $ `Ranking - Private`                                      <dbl> 1, 2, 3, 4, 5,…
#> $ `Production Based Sales (Net) (TL)`                      <dbl> 79042478682, 3…
#> $ `Net Sales - General Ranking No`                         <dbl> 1, 2, 3, 5, 6,…
#> $ `Net Sales - Public/Private Ranking No`                  <dbl> 1, 2, 3, 5, 6,…
#> $ `Net Sales (TL)`                                         <dbl> 89093033486, 3…
#> $ `Gross Value Added - General Ranking No`                 <dbl> 1, 5, NA, NA, …
#> $ `Gross Value Added - Public/Private Ranking No`          <dbl> 1, 5, NA, NA, …
#> $ `Gross Value Added (TL)`                                 <dbl> 37391464943, 4…
#> $ `Equity - General Ranking No`                            <dbl> 6, 25, NA, NA,…
#> $ `Equity - Public/Private Ranking No`                     <dbl> 4, 22, NA, NA,…
#> $ `Equity (TL)`                                            <dbl> 6262005861, 19…
#> $ `Total Assets - General Ranking No`                      <dbl> 1, 12, NA, NA,…
#> $ `Total Assets - Public/Private Ranking No`               <dbl> 1, 10, NA, NA,…
#> $ `Total Assets (TL)`                                      <dbl> 35066775689, 1…
#> $ `Profit/Loss for the Period - General Ranking No`        <dbl> 4, 10, NA, NA,…
#> $ `Profit/Loss for the Period - Public/Private Ranking No` <dbl> 3, 8, NA, NA, …
#> $ `Profit/Loss for the Period (TL)`                        <dbl> 3911187643, 12…
#> $ `EBITDA - General Ranking No`                            <dbl> 1, 4, NA, NA, …
#> $ `EBITDA - Public/Private Ranking No`                     <dbl> 1, 4, NA, NA, …
#> $ `EBITDA (TL)`                                            <dbl> 8447049290, 30…
#> $ `Exports - General Ranking No`                           <dbl> 5, 1, 2, 3, 4,…
#> $ `Exports - Public/Private Ranking No`                    <dbl> 5, 1, 2, 3, 4,…
#> $ `Exports (Thousand $)`                                   <dbl> 2469739, 56827…
#> $ `Number of Employees - General Ranking No`               <dbl> 25, 3, NA, 9, …
#> $ `Number of Employees - Public/Private Ranking No`        <dbl> 21, 3, NA, 9, …
#> $ `Number of Employees (Person)`                           <dbl> 4935, 10967, N…
#> $ `Economic Activity Code - NACE Rev.2`                    <dbl> 19, 29, 29, 29…
#> $ `Economic Activity Code - ISIC Rev.2`                    <dbl> 353, 384, 384,…
#> $ `Capital Share (Public)`                                 <dbl> 0.00, 0.00, 0.…
#> $ `Capital Share (Private)`                                <dbl> 51.00, 41.07, …
#> $ `Capital Share (Foreign)`                                <dbl> 0.00, 41.04, 1…
#> $ `Capital Share (Publicity)`                              <dbl> 49.00, 17.89, …
#> $ `Web Site`                                               <chr> "www.tupras.co…

# Following code will download all available data.
dt <- get_iso500(2018, all = TRUE)

dt %>% 
  dplyr::glimpse()
#> Rows: 7,500
#> Columns: 39
#> $ Year                                                     <dbl> 2009, 2007, 20…
#> $ `Top 500 Rank 1999 - Ranking No`                         <dbl> 1, 1, 1, 1, 1,…
#> $ `Top 500 Rank 1998 - Ranking No`                         <dbl> 1, 1, 1, 1, 1,…
#> $ Enterprises                                              <chr> "TÜPRAŞ-Türkiy…
#> $ `Affiliated Chamber / Public`                            <chr> "Kocaeli Chamb…
#> $ `Ranking - Public`                                       <dbl> NA, NA, NA, NA…
#> $ `Ranking - Private`                                      <dbl> 1, 1, 1, 1, 1,…
#> $ `Production Based Sales (Net) (TL)`                      <dbl> 15495595133, 1…
#> $ `Net Sales - General Ranking No`                         <dbl> 1, 1, 1, 1, 1,…
#> $ `Net Sales - Public/Private Ranking No`                  <dbl> 1, 1, 1, 1, 1,…
#> $ `Net Sales (TL)`                                         <dbl> 18215446534, 2…
#> $ `Gross Value Added - General Ranking No`                 <dbl> 1, 1, 1, 1, 1,…
#> $ `Gross Value Added - Public/Private Ranking No`          <dbl> 1, 1, 1, 1, 1,…
#> $ `Gross Value Added (TL)`                                 <dbl> 17257587409, 1…
#> $ `Equity - General Ranking No`                            <dbl> 4, 3, 3, 4, 4,…
#> $ `Equity - Public/Private Ranking No`                     <dbl> 2, 2, 2, 2, 2,…
#> $ `Equity (TL)`                                            <dbl> 2772952504, 33…
#> $ `Total Assets - General Ranking No`                      <dbl> 2, 2, 3, 2, 2,…
#> $ `Total Assets - Public/Private Ranking No`               <dbl> 1, 1, 2, 1, 1,…
#> $ `Total Assets (TL)`                                      <dbl> 8333665892, 77…
#> $ `Profit/Loss for the Period - General Ranking No`        <dbl> 2, 1, 1, 3, 3,…
#> $ `Profit/Loss for the Period - Public/Private Ranking No` <dbl> 1, 1, 1, 1, 1,…
#> $ `Profit/Loss for the Period (TL)`                        <dbl> 776931357, 125…
#> $ `EBITDA - General Ranking No`                            <dbl> NA, NA, NA, NA…
#> $ `EBITDA - Public/Private Ranking No`                     <dbl> NA, NA, NA, NA…
#> $ `EBITDA (TL)`                                            <dbl> NA, NA, NA, NA…
#> $ `Exports - General Ranking No`                           <dbl> 4, 2, 1, 2, 1,…
#> $ `Exports - Public/Private Ranking No`                    <dbl> 4, 2, 1, 2, 1,…
#> $ `Exports (Thousand $)`                                   <dbl> 1751582, 33800…
#> $ `Number of Employees - General Ranking No`               <dbl> 18, 19, 14, 22…
#> $ `Number of Employees - Public/Private Ranking No`        <dbl> 11, 12, 9, 15,…
#> $ `Number of Employees (Person)`                           <dbl> 4155, 4451, 46…
#> $ `Economic Activity Code - NACE Rev.2`                    <dbl> NA, NA, NA, NA…
#> $ `Economic Activity Code - ISIC Rev.2`                    <dbl> 353, 353, 353,…
#> $ `Capital Share (Public)`                                 <dbl> 0, 0, 0, 0, 0,…
#> $ `Capital Share (Private)`                                <dbl> 100.00, 100.00…
#> $ `Capital Share (Foreign)`                                <dbl> 0.00, 0.00, 0.…
#> $ `Capital Share (Publicity)`                              <dbl> 0.00, 0.00, 0.…
#> $ `Web Site`                                               <chr> "www.tupras.co…
```


