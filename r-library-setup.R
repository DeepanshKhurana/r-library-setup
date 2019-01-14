#Linux Dependencies: libssl-dev, libcurl4-openssl-dev and libxml2-dev, unixodbc-dev

wrangling <- c("tidyverse", "gsubfn", "googlesheets", "stringr", "stringi", "readr", "jsonlite", "data.table", "lubridate")
analysis <- c("MASS", "caret", "CARS", "sqldf")
graphics <- c("ggmap", "gridExtra", "RColorBrewer", "scales")
sql <- c("RSQLite", "odbc")
python <- c("reticulate")
github <- c("githubinstall")
utilities <- c("RCurl")
json <- c("rjson", "jsonlite")

all <- c(wrangling, analysis, graphics, sql, python, github, utilities, json)

is.installed <- function(mypkg){
  is.element(mypkg, installed.packages()[,1])
}

# Change this for package type
# package_type = json

# use "all" for all utilities above
package_type = all

# If tidyverse fails to install
# install.packages("readr", INSTALL_opts = c('--no-lock'))

for(package in package_type) {
  if (!is.installed(package)) {
    install.packages(package, dependencies = TRUE)
  }
  else {
    cat("\"", package, "\" is already installed.\n", sep = "")
  }
}
