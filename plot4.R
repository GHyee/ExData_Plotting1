#plot 4
#set working directory
setwd("D:/Google/Coursera/4. Exploratory Data Analysis/")
#import data
household_power_consumption <- read.csv("D:/Google/Coursera/4. Exploratory Data Analysis/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings="?")
data<-household_power_consumption[66637:69516,]
names(household_power_consumption)
gap<-as.numeric(data$Global_active_power)
v <- as.numeric(data$Voltage)
grp<-as.numeric(data$Global_reactive_power)
sub1<-as.numeric(data$Sub_metering_1)
sub2<-as.numeric(data$Sub_metering_2)
sub3<-as.numeric(data$Sub_metering_3)
#format time
time<-strptime(paste(data[,1],data[,2]),'%d/%m/%Y %H:%M:%S')
#draw plot
png("plot4.png",width = 480, height = 480, units = "px", pointsize = 12,)
par(mfrow=c(2,2))
#plot 1
plot(x=time,y=gap,type="l",ylab="Global Active Power",xlab="")
axis(side=2,at=c(0,2,4,6),lwd=2)
#plot 2
plot(x=time,y=v,type="l",ylab="Voltage",xlab="datetime")
axis(side=2,at=c(234,238,242,246),lwd=2)
#plot 3
plot(x=time,y=sub1,type="l",ylab="Energy sub metering",xlab="",yaxt='n',ylim=c(0,40))
par(new=TRUE)
plot(x=time,y=sub2,type="l",col='red',xlab="",ylab="",yaxt='n',ylim=c(0,40))
par(new=TRUE)
plot(x=time,y=sub3,type="l",col='blue',xlab="",ylab="",yaxt='n',yaxt='n',ylim=c(0,40))
axis(side=2,at=c(0,10,20,30),lwd=2)
leg.txt <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright",leg.txt,col = c("black","red", "blue"),lty=1,bty = "n")
#plot 4
plot(x=time,y=grp,type="l",ylab="Global_reactive_power",xlab="datetime")
axis(side=2,at=c(0,2,4,6),lwd=2)

dev.off()

