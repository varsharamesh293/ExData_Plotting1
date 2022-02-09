data1<- read.csv("D:\\VIT\\R coursera\\household_power_consumption.txt",sep=";",na.strings = "?")
data1
subdata<- subset(data1,data1$Date=="1/2/2007" | data1$Date =="2/2/2007")
subdata
subdata$Date <- as.Date(subdata$Date, format="%d/%m/%Y")
subdata$Date
datetime <- paste(as.Date(subdata$Date), subdata$Time)
datetime
subdata$Datetime <- as.POSIXct(datetime)
subdata$Datetime
with(subdata, { plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
