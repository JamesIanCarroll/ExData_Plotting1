setwd("G:\\My Dropbox\\Dropbox\\Coursera\\ExData_Plotting1")
data<- read.csv("G:\\My Dropbox\\Dropbox\\Coursera\\ExData_Plotting1\\household_power_consumption.txt", sep=";" header=TRUE,  stringsAsFactors=FALSE, na.strings=c("?"))
twodaydata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
twodaydata$dateandtime <- strptime(paste(twodaydata$Date, twodaydata$Time), "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(twodaydata$dateandtime, twodaydata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()