cat('\f')   # Clear console
rm(list = ls()) # Clear environment

# Source all functions
lapply(list.files("./functions/", full.names = TRUE), source)
