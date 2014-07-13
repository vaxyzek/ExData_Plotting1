data <- read.table('household_power_consumption.txt', sep = ";", nrows=70000, header = TRUE, stringsAsFactors=FALSE);
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
data$DateTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S");
#data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
plot(data$DateTime, data$Sub_metering_1, type = "l", ylab="Energy sub metering", xlab="", cex.lab=0.7, cex.axis=0.7)
lines(data$DateTime, data$Sub_metering_2, type = "l", col="red")
lines(data$DateTime, data$Sub_metering_3, type = "l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2  ", "Sub_metering_3"), 
       cex=0.75, col=c("black", "red", "blue"), lty=1, lwd=2) 

dev.copy(png,'plot3.png')

dev.off()