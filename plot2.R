
## Plot 2
## MUST RUN GETTING AND CLEANING DATA.R FIRST



## Create an attribute with date and time then create line graph showing change of Global Active Power over time

powerSub <- transform(powerSub, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")

plot(powerSub$timestamp,powerSub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
