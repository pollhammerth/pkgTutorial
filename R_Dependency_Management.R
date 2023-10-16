#### Dependency management in R with renv

# install renv package
# it can create RStudio project specific libraries (specific packages and versions)
install.packages("renv")

# after loading a RStudio project (setwd(), require all project packages)
# example for MAMOTerrace R package project
setwd("H:/R_Package_Devel/MAMOTerrace")
packages = c("terra","data.table","rgdal","maptools","rgeos","raster","stringr","shape","sp","dplyr","plyr","sf","readtext","doParallel","foreach","iterators","s2")
for (i in 1:length(packages)) { eval(parse(text = paste0("require('",packages[i],"')") )) }

# initialize a new RStudio Project library (local environment)
renv::init()

# will create 4 files
# .Rprofile
# renv.lock
# renv/activate.R
# renv/library

# library path should be automatically included in .gitignore -> check!
#first three files should be put in 'version control'


# save a snapshot of the current library status with
renv::snapshot()

# the snapshot will be stored unter 
# renv.lock

# restore a previous library status with
renv::restore()


# renv can be set to either search the whole project directory for needed packages, or only check which packages are mentioned in DESCRIPTION
# I like to chose the latter. So keep DESCRIPTION up to date!








#### When executing renv the first time, this info appears:

# renv: Project Environments for R
# 
# Welcome to renv! It looks like this is your first time using renv.
# This is a one-time message, briefly describing some of renv's functionality.
# 
# renv will write to files within the active project folder, including:
# 
#   - A folder 'renv' in the project directory, and
#   - A lockfile called 'renv.lock' in the project directory.
# 
# In particular, projects using renv will normally use a private, per-project
# R library, in which new packages will be installed. This project library is
# isolated from other R libraries on your system.
# 
# In addition, renv will update files within your project directory, including:
# 
#   - .gitignore
#   - .Rbuildignore
#   - .Rprofile
# 
# Finally, renv maintains a local cache of data on the filesystem, located at:
# 
#   - "C:/Users/tomjo/AppData/Local/R/cache/R/renv"
# 
# This path can be customized: please see the documentation in `?renv::paths`.
# 
# Please read the introduction vignette with `vignette("renv")` for more information.
# You can browse the package documentation online at https://rstudio.github.io/renv/.









