source('getData.R') #This line gets the data in working directory
data  <- data.frame(data)
ndata <- subset(data, as.Date(data$Date, format = '%d/%m/%Y') == '2007-02-01' | as.Date(data$Date, format = '%d/%m/%Y') == '2007-02-02')

# Create the plot
png(file = "plot1.png", bg = "white", width = 480, height = 480)
myplot  <- hist(as.numeric(as.character(ndata$Global_active_power)), col = "red",xlab = "Global Active Power (kilowatts)", ylab ="Frequency", main = "Global Active Power")
dev.off()