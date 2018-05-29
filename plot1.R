data<-fread("household_power_consumption.txt")
data<-as.data.frame(data)
data$Date<-as.Date.character(data$Date, c("%d/%m/%Y"))
data<-subset.data.frame(data, data$Date==c("2007-02-01","2007-02-02"))
data$Global_active_power<-as.numeric(data$Global_active_power)
data$Global_reactive_power<-as.numeric(data$Global_reactive_power)
data$Global_intensity<-as.numeric(data$Global_intensity)
data$Sub_metering_1<-as.numeric(data$Sub_metering_1)
data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
data$Sub_metering_3<-as.numeric(data$Sub_metering_3)
png("plot1.png", width= 480,height=480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)")
dev.off()



