
pathData  <- getwd(); # Get the path of the working directory
# Get the filename of data and download it from the server.
temp  <- tempfile()
url  <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fileName  <- "household_power_consumption.txt"
if (file.exists(file.path(pathData, fileName))){
  data  <- read.table(file.path(pathData, fileName), sep=";", header = TRUE, na.strings ="?") # Load the file in workspace
} else{
  download.file(url, temp, method = 'curl') # download the data
  fileName  <- unzip(temp) # Unzip and get the name of the file
  unlink(temp) # Unlink the connection
  data  <- read.table(file.path(pathData, fileName), sep=";", header = TRUE, na.strings ="?") # Load the file in workspace
}


