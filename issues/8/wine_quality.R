#' @name: wine_quality.R
#' 
#' @author: Anna Soto
#' 
#' @description: Find out correlation between wine and wine characteristics
#' 
#' @In: winequality-red.csv
#'
#' 
#' @Out: 
#' 

# Load libraries
pacman::p_load(fixest, readr, lubridate, dplyr, tidyr, stringr, readxl, stringi)

# 1. LOAD DATA -----------------------------------------------------------------

wine_c <- read_delim("C:/Users/Anna/Dropbox/github/Github_lesson/source/winequality-red.csv", delim = ";")

# 2. RUN REGRESSION ------------------------------------------------------------

reg1 <- feols(quality ~ chlorides + pH + alcohol, wine_c, vcov = "hetero")