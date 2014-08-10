#gethousedata.R
#gets the data for Exploratory Data Analysis course project #1

# download the zip file and store it in a folder called "data"
        # URL containing zip file: "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        # name of zip file: "household_power_consumption.zip"
        # name of single data file within: "household_power_consumption.txt"

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "./data/household_power_consumption.zip")

# read the data into R once you have the file
house <- (read.table(unz("./data/household_power_consumption.zip", 
        "household_power_consumption.txt"), 
        sep = ";", na.strings = "?",colClasses = c("character", 
        "character", "numeric","numeric","numeric","numeric",
        "numeric","numeric","numeric"),col.names = c("date", "time", "globAct", 
        "globReact", "volt","globInt","subMet1","subMet2", "subMet3"),
        header = TRUE, skip=66636,nrows=2880))


# date and time conversion function
# converts first two columns into a vector to be used 
# as a reference point for time series plots

require(lubridate)

mydates <- house[,1]
mytimes <- house[,2]
timeunits <- paste (mydates, mytimes)

newtimeunits <-dmy_hms(timeunits)