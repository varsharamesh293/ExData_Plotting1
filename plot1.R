data1<- read.csv("D:\\VIT\\R coursera\\household_power_consumption.txt",sep=";",na.strings = "?")
data1
subdata<- subset(data1,data1$Date=="1/2/2007" | data1$Date =="2/2/2007")
subdata
hist(subdata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
png("plot1.png", width=480, height=480)
dev.off()
