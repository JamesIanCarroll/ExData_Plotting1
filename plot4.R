setwd("G:\\My Dropbox\\Dropbox\\Coursera\\ExData_Plotting1")
data<- read.csv("G:\\My Dropbox\\Dropbox\\Coursera\\ExData_Plotting1\\household_power_consumption.txt", sep=";", header=TRUE,   stringsAsFactors=FALSE, na.strings=c("?"))
twodaydata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
twodaydata$dateandtime <- strptime(paste(twodaydata$Date, twodaydata$Time), "%d/%m/%Y %H:%M:%S")
png("plot4.png")
par(mfrow = c(2,2))

plot(twodaydata$dateandtime, twodaydata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(twodaydata$dateandtime, twodaydata$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(twodaydata$dateandtime, twodaydata$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(twodaydata$dateandtime, twodaydata$Sub_metering_2, col = "red")
lines(twodaydata$dateandtime, twodaydata$Sub_metering_3, col = "blue")
legend("topright", lty = 1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(twodaydata$dateandtime, twodaydata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()