#Plot 1
#Set working directory
setwd("D:/Google/Coursera/4. Exploratory Data Analysis/")
#import data
household_power_consumption <- read.csv("D:/Google/Coursera/4. Exploratory Data Analysis/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings="?")
data<-household_power_consumption[66637:69516,]
names(household_power_consumption)
gap<-as.numeric(data$Global_active_power)
#draw plot 1
png("plot1.png",width = 480, height = 480, units = "px", pointsize = 12,)
hist(gap,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
