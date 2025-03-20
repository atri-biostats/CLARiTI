library(tidyverse); library(devtools);

# Load data ----
load_all('../')

# Document all dataset(s) ----
source("document.R")

# Generate documentation, build, and install the R package ----
document()
# check(error_on = "error")
# pkg_dir <- build(args="--compact-vignettes=both")
pkg_dir <- build(vignettes = FALSE)
install.packages(pkg_dir, repos = NULL, type = "source")

# Build README.md ----
build_readme()

# Build website ----
# run once:
# usethis::use_pkgdown()
# setwd('../')
# pkgdown::build_site()
# publish online: (commit changes first)
# pkgdown::deploy_to_branch()
