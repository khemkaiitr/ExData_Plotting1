source('getData.R') #This line gets the data in working directory

ndata <- subset(data, as.Date(data$Date, format = '%d/%m/%Y') == '2007-02-01' | as.Date(data$Date, format = '%d/%m/%Y') == '2007-02-02')


# Create the plot
png(file = "plot3.png", bg = "white", width = 480, height = 480)
myplot  <- plot(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(ndata$Sub_metering_1), type ="n") 
plot(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(ndata$Sub_metering_1),col = "black", type ='l', xlab =""
     , ylab = "Energy sub metering")
lines(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(ndata$Sub_metering_2),col = "red")
lines(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(ndata$Sub_metering_3),col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), lwd = c(2.5, 2.5, 2.5), col = c("black", "red", "blue"))
dev.off()
