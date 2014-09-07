source('getData.R') # This line gets the data in working directory

ndata <- subset(data, as.Date(data$Date, format = '%d/%m/%Y') == '2007-02-01' | as.Date(data$Date, format = '%d/%m/%Y') == '2007-02-02')

# Create the plot
png(file = "plot4.png", bg = "white", width = 480, height = 480)
myplot <- par(mfrow = c(2,2))

plot(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(as.character(ndata$Global_active_power)), xlab = '', ylab ='Global Active Power',
     type = 'l')
plot(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'),ndata$Voltage, xlab = 'datetime', ylab ='Voltage',
     type = 'l')
plot(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(ndata$Sub_metering_1),col = "black", type ='l', xlab =""
     , ylab = "Energy sub metering")

lines(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(ndata$Sub_metering_2),col = "red")
lines(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(ndata$Sub_metering_3),col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), lwd = c(2.5, 2.5, 2.5), col = c("black", "red", "blue"), bty ="n")
plot(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), ndata$Global_reactive_power, xlab = 'datetime', ylab ='Global Active Power',
     type = 'l')
dev.off()