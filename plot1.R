setwd("G:\\My Dropbox\\Dropbox\\Coursera\\ExData_Plotting1")
data<- read.csv("G:\\My Dropbox\\Dropbox\\Coursera\\ExData_Plotting1\\household_power_consumption.txt", sep=";" header=TRUE,  stringsAsFactors=FALSE, na.strings=c("?"))
twodaydata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
png("plot1.png")
hist(twodaydata$Global_active_power, xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", col = "red")
dev.off()