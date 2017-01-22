
## Plot 3
## MUST RUN GETTING AND CLEANING DATA.R FIRST


## Show three lines of sub-metering (1,2,3) across time

plot(powerSub$timestamp,powerSub$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(powerSub$timestamp,powerSub$Sub_metering_2,col="red")
  lines(powerSub$timestamp,powerSub$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1), lwd=c(1,1))

dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()


