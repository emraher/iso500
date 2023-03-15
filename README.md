
<!-- README.md is generated from README.Rmd. Please edit that file -->

# iso500

<!-- badges: start -->

[![R-CMD-check](https://github.com/emraher/iso500/workflows/R-CMD-check/badge.svg)](https://github.com/emraher/iso500/actions)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of `iso500` is to download data for **Turkey’s Top 500
Industrial Enterprises**.

## Installation

You can install `iso500` from
[Github](https://github.com/emraher/iso500) with:

``` r
remotes::install_github("emraher/iso500")
```

## Example

There’s only one function in the package, `get_iso500(year)`. You can
use this function to download data.

``` r
library(iso500)

# Following code will download 2018 data.
iso500_data <- get_iso500(2018)

head(iso500_data)
#> # A tibble: 6 × 107
#>         Id Unvan    Yil Birin…¹ Serma…² Serma…³ Serma…⁴ Serma…⁵ NACEId NACE  NACEKod ISICId ISIC 
#>      <int> <chr>  <int>   <int>   <dbl>   <dbl>   <dbl>   <dbl> <chr>  <chr> <chr>   <chr>  <chr>
#> 1 20181001 TÜPRA…  2018       1       0    51       0      49   19     Kok … "19   … 353    Petr…
#> 2 20181002 Ford …  2018       1       0    41.1    41.0    17.9 29     Moto… "29   … 384    Taşı…
#> 3 20181003 Toyot…  2018       1       0     0     100       0   29     Moto… "29   … 384    Taşı…
#> 4 20181004 Oyak-…  2018       1       0    49      51       0   29     Moto… "29   … 384    Taşı…
#> 5 20181005 Tofaş…  2018       1       0    37.8    37.9    24.3 29     Moto… "29   … 384    Taşı…
#> 6 20181006 Arçel…  2018       1       0    74.8     0      25.2 27     Elek… "27   … 383    Elek…
#> # … with 94 more variables: ISICKod <chr>, FirmaId <int>, EskiTicaretSicilNo <int>,
#> #   WebAdresi <chr>, AktifMi <lgl>, SilindiMi <lgl>, UretimdenSatislar <dbl>,
#> #   AciklamaDurumuUretimdenSatislar <lgl>, AciklamaDurumuUretimdenSatislarOnceki <lgl>,
#> #   UretimdenSatislarGSNo <int>, UretimdenSatislarGSNoOnceki <int>,
#> #   UretimdenSatislarKOSNo <int>, UretimdenSatislarKOSNoOnceki <int>,
#> #   UretimdenSatislarSiraNoString <chr>, UretimdenSatislarSiraNoStringSolSira <chr>,
#> #   UretimdenSatislarKamuOzelSiraNoString <chr>, NetSatislar <dbl>, …
```

## Code of Conduct

Please note that the iso500 project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
