# Long-term Package Version Documentation

# This script uses pak to write out an explicit and detailed record (pak.lock) of packages used in a project. 

# The pak.lock file can be used to install exact package versions with pak, or serve as a 
# long-term record. Using pak helps align package versions across users and time to increase reproducibility.
# There are other tools to document and install specific R software versions, but this is the most streamlined 
# and easiest to use that I've found to date (2026-06-01). 

# Pak documentation - https://pak.r-lib.org/index.html

# Pak software package management ----------------------------------------

# Install pak if you don't have it
# install.packages("pak")

# Make Posit packagemanager primary install repo (uses faster binaries)
# @ snapshot date - hold all package versions to the "latest" version at this date
# Think about updating this date to something more recent, but a few months delayed to avoid release bugs
pak::repo_add(CRAN = "RSPM@2025-10-31")

# check new default configuration
#pak::repo_get()

# Create/update lockfile to record exact package versions (and metadata) used
# Commit pak.lock to git so collaborators and future you have a detailed record of the 
# software requirements used in this project

# NOTE: GitHub software requires a specific syntax:
#  [<package>=][github::]<username>/<repository>[/<subdir>][<detail>]
# See documentation for more options - https://pak.r-lib.org/reference/pak_package_sources.html?q=github#github-packages-github-

# You will need to manually add package dependencies from across the project below
pak::lockfile_create(
  pkg = c(
    "arrow",
    "data.table",
    "dplyr",
    "tidyr",
    "ggplot2",
    "countrycode",
    "glue",
    "quarto",
    "github::Seafood-Globalization-Lab/exploreARTIS@1225177"
  ),
  lockfile = "pak.lock"
)
