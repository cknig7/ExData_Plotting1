## RUN THIS CODE BEFORE RUNNING PLOT CODES
## Exploratory Analyis: Electric power consumption


## Retrieve data set

if(!file.exists("exdata-data-household_power_consumption.zip")) {
  power <- tempfile()
  download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",power)
  file <- unzip(power)
  unlink(power)
}


## Load data

power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")


## Prepare data- load needed package, limit data by Date, convert certain elements to numeric

install.packages("lubridate")
library("lubridate")

power$Date<-dmy(power$Date)

powerSub <- power[power$Date >=as.Date("2007-02-01") & power$Date <= as.Date("2007-02-02"), ]

# Format elements
powerSub$Global_active_power <- as.numeric(powerSub$Global_active_power)
powerSub$Sub_metering_1 <- as.numeric(powerSub$Sub_metering_1)
powerSub$Sub_metering_2 <- as.numeric(powerSub$Sub_metering_2)
powerSub$Sub_metering_3 <- as.numeric(powerSub$Sub_metering_3)

