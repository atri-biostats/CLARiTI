# Building CLARiTI from csv files <a href="https://naccdata.org/nacc-collaborations/clariti"><img src="../man/figures/logo.png" align="right" height="138" /></a>

To generate the package from source csv files:

- clone this repository
- download CLARiTI data from <https://naccdata.org/nacc-collaborations/clariti> and
  copy all directories to [data-raw](data-raw)
- `source('data-raw/data-prep.R', chdir=TRUE)` to convert
  `data-raw/*.csv` files to `data/*.rda` files
- `source('tools/build.R', chdir=TRUE)` to generate documentation and
  build R package
- `source('data-sas/r2sas.R', chdir=TRUE)` to generate sas xpt files
