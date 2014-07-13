data <- read.table('household_power_consumption.txt', sep = ";", nrows=70000, header = TRUE, stringsAsFactors=FALSE);
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
data$DateTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S");
data$Global_active_power <- as.numeric(data$Global_active_power)
plot(data$DateTime, data$Global_active_power, type = "l", ylab="Global Active Power (kilowatts)", xlab="", cex.lab=0.7, cex.axis=0.7)
dev.copy(png,'plot2.png')
dev.off()