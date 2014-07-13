data <- read.table('household_power_consumption.txt', sep = ";", nrows=70000, header = TRUE, stringsAsFactors=FALSE);
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
#data$DateTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S");
#head(data)
hist(as.numeric(data$Global_active_power), col = "red1", xlab = "Global Active Power (kilowatts)", main = "Global Active Power",cex.axis=0.7)
dev.copy(png,'plot1.png')
dev.off()