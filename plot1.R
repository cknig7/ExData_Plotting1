
## Plot 1
## MUST RUN GETTING AND CLEANING DATA.R FIRST



## Histogram of Global Active Power

hist(powerSub$Global_active_power, xlab="Global Active Power (kilowatts)",
  main="Global Active Power", col="Red")

dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()



