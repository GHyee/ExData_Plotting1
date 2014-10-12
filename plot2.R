#Plot 2
#Set working directory
setwd("D:/Google/Coursera/4. Exploratory Data Analysis/")
#import data
household_power_consumption <- read.csv("D:/Google/Coursera/4. Exploratory Data Analysis/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings="?")
data<-household_power_consumption[66637:69516,]
names(household_power_consumption)
gap<-as.numeric(data$Global_active_power)
#format time variable
time<-strptime(paste(data[,1],data[,2]),'%d/%m/%Y %H:%M:%S')
#draw plot 2
png("plot2.png",width = 480, height = 480, units = "px", pointsize = 12,)
plot(x=time,y=gap,type="l",ylab="Global Active Power (kilowatts)",xlab="")
axis(side=2,lwd=2)
dev.off()
