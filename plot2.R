source('getData.R') #This line gets the data in working directory
ndata <- subset(data, as.Date(data$Date, format = '%d/%m/%Y') == '2007-02-01' | as.Date(data$Date, format = '%d/%m/%Y') == '2007-02-02')


# Create the plot
png(file = "plot2.png", bg = "white", width = 480, height = 480)
myplot  <- plot(strptime(paste(ndata$Date, ndata$Time), format = '%d/%m/%Y %H:%M:%S'), as.numeric(as.character(ndata$Global_active_power)), xlab = '', ylab ='Global Active Power (kilowatts)',
               type = 'l')
dev.off()


     