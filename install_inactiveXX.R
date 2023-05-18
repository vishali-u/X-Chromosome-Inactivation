# Install dependencies

# ERROR: dependencies ‘bettermc’, ‘miloR’, ‘alleleIntegrator’, 
# ‘ComplexHeatmap’, ‘Rsamtools’ are not available for package ‘inactiveXX’


# Install bettermc
bettermc_url <- 'https://cran.r-project.org/src/contrib/Archive/bettermc/bettermc_1.2.1.tar.gz'
if (! requireNamespace("bettermc", quietly = TRUE)) {
  install.packages(bettermc_url, repos = NULL, type = "source")
}

# Install dependencies for miloR
if (! requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

if (! requireNamespace("BiocParallel", quietly = TRUE)) {
  BiocManager::install("BiocParallel", update = TRUE)
}

if (! requireNamespace("BiocNeighbors", quietly = TRUE)) {
  BiocManager::install("BiocNeighbors", update = TRUE)
}

if (! requireNamespace("SingleCellExperiment", quietly = TRUE)) {
  BiocManager::install("SingleCellExperiment", update = TRUE)
}

if (! requireNamespace("BiocGenerics", quietly = TRUE)) {
  BiocManager::install("BiocGenerics", update = TRUE)
}

if (! requireNamespace("littler", quietly = TRUE)) {
  BiocManager::install("littler", update = TRUE, ask = FALSE, force = TRUE)
}

if (! requireNamespace("rstan", quietly = TRUE)) {
  BiocManager::install("rstan", update = TRUE, ask = FALSE, force = TRUE)
}

if (! requireNamespace("StanHeaders", quietly = TRUE)) {
  BiocManager::install("StanHeaders", update = TRUE, ask = FALSE, force = TRUE)
}

#BiocManager::install(c("BiocGenerics", "littler", "rstan", "StanHeaders"), 
                     #update = TRUE, ask = FALSE, force = TRUE)

if (! requireNamespace("DelayedArray", quietly = TRUE)) {
  BiocManager::install("DelayedArray", update = TRUE)
}

if (! requireNamespace("beachmat", quietly = TRUE)) {
  BiocManager::install("beachmat", update = TRUE)
}

if (! requireNamespace("BiocSingular", quietly = TRUE)) {
  BiocManager::install("BiocSingular", update = TRUE)
}

if (! requireNamespace("ggbeeswarm", quietly = TRUE)) {
  install.packages("ggbeeswarm")
}

if (! requireNamespace("cowplot", quietly = TRUE)) {
  install.packages("cowplot")
}

if (! requireNamespace("patchwork", quietly = TRUE)) {
  install.packages("patchwork")
}

# Install miloR using link from BiocConductor website 
miloR_url <- 'https://www.bioconductor.org/packages/release/bioc/src/contrib/miloR_1.8.1.tar.gz'
if (! requireNamespace("miloR", quietly = TRUE)) {
  install.packages(miloR_url, repos = NULL, type = "source")
}

# grr is a dependency for Matrix.utils
if (! requireNamespace("grr", quietly = TRUE)) {
  install.packages("grr")
}

# Install dependencies for alleleIntegrator
matrix_utils_url <- 'https://cran.r-project.org/src/contrib/Archive/Matrix.utils/Matrix.utils_0.9.8.tar.gz'
if (! requireNamespace("Matrix.utils", quietly = TRUE)) {
  install.packages(matrix_utils_url, repos = NULL, type = "source")
}

if (! requireNamespace("Rsamtools", quietly = TRUE)) {
  BiocManager::install("Rsamtools", update = TRUE)
}

if (! requireNamespace("rtracklayer", quietly = TRUE)) {
  BiocManager::install("rtracklayer", update = TRUE)
}

if (! requireNamespace("VariantAnnotation", quietly = TRUE)) {
  BiocManager::install("VariantAnnotation", update = TRUE)
}

if (! requireNamespace("GenomicFeatures", quietly = TRUE)) {
  BiocManager::install("GenomicFeatures", update = TRUE)
}

if (! requireNamespace("ComplexHeatmap", quietly = TRUE)) {
  BiocManager::install("ComplexHeatmap", update = TRUE)
}

if (! requireNamespace("SNPRelate", quietly = TRUE)) {
  BiocManager::install("SNPRelate", update = TRUE)
}

# Install alleleIntegrator
devtools::install_github('constantAmateur/alleleIntegrator')

# Install inactiveXX
devtools::install_github('constantAmateur/inactiveXX')
