cat('\f')   # Clear console
rm(list = ls()) # Clear environment

# Source all functions
lapply(list.files("./functions/", full.names = TRUE), source)
# Read FX rate data
fx_data <- getFXData()

# Convert column names
colnames(fx_data)[1] <- "Date"
colnames(fx_data) <- convertCurrencyNames(colnames(fx_data))

# Convert type of "Date" column from character to Date
fx_data$Date <- as.Date(fx_data$Date)
