#plot3
#set working directory
setwd("D:/Google/Coursera/4. Exploratory Data Analysis/")
#import data
household_power_consumption <- read.csv("D:/Google/Coursera/4. Exploratory Data Analysis/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings="?")
data<-household_power_consumption[66637:69516,]
names(household_power_consumption)
sub1<-as.numeric(data$Sub_metering_1)
sub2<-as.numeric(data$Sub_metering_2)
sub3<-as.numeric(data$Sub_metering_3)
#format time
time<-strptime(paste(data[,1],data[,2]),'%d/%m/%Y %H:%M:%S')
#draw plot 3
png("plot3.png",width = 480, height = 480, units = "px", pointsize = 12,)
plot(x=time,y=sub1,type="l",ylab="Energy sub metering",xlab="",yaxt='n',ylim=c(0,40))
par(new=TRUE)
plot(x=time,y=sub2,type="l",col='red',xlab="",ylab="",yaxt='n',ylim=c(0,40))
par(new=TRUE)
plot(x=time,y=sub3,type="l",col='blue',xlab="",ylab="",yaxt='n',yaxt='n',ylim=c(0,40))
axis(side=2,at=c(0,10,20,30),lwd=2)
leg.txt <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright",leg.txt,col = c("black","red", "blue"),lty=1)
dev.off()
