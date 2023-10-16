
# R Package creation
# this is based on "https://ourcodingclub.github.io/tutorials/writing-r-package/"

# 1
# install packages for package creation
install.packages("devtools") # tools for package development
install.packages("roxygen2") # documetation writing

# 2
# create folder, that will hold the package
setwd(file.path("H:","R_Package_Devel"));list.files()
dir.create("MAMOTerrace") # holds all package and documentation files
dir.create("MAMOTerrace/R") # in here all packageFunction.Rs go

# now create a function for the package and save it as e.g. "flump.R" in "R/"

# and create a text file called DESCRIPTION in your package folder and add sth like this (but uncommented...):
# Package: SCCTempConverter
# Type: Package
# Title: Temperature Conversion Package for Demonstration
# Version: 0.0.1.0

# this test package can already be loaded like this
setwd(file.path("H:","R_Package_Devel","MAMOTerrace"))
library(devtools)
load_all(".")

# 3
# start a new R project in RStudio
# menu: "new project" -> "in existing directory" -> choose ./MAMMOTerrace/

# 4
# add help files (documentation)
# these can later be called like this
help(lm)
?lm
# such "markdown" files can be created with roxygen2 (http://kbroman.org/pkg_primer/pages/docs.html)
# the function.R file needs to follow a certain structure and use special tags for roxygen2.

# after editing the function file, create the markdown (make sure the wd is set to package folder. e.g. "MAMOTerrace")
library(roxygen2)
roxygenise()
# test the documentation
load_all(".")
?mm_alignRas()

# 5
# put on GitHub for easy package installing and then loading via library() or require()
# to be able to put files/notes or whatever on the repository, that should not be part of the package,
# add a folder e.g. ./notInPackageNotes/
# and add this last line to .Rbuildignore:
####
# ^.*\.Rproj$
# ^\.Rproj\.user$
# notInPackageNotes*
####
# everything starting with notInPackageNotes will be ignored (so everything in that folder)

# now install GitKraken, a tool for version control (tutorial: https://stirlingcodingclub.github.io/version_control/vc_notes.html)
# standard workflow in GitKraken: Stage - commit - push

# after uploading (pushing) the files on GitHub, install the package like this:
library(devtools)
install_github("pollhammerth/MAMOTerrace")
library(MAMOTerrace)
?mm_alignRas

