##For Exploratory data analysis by Roger Peng Assignment 1

setwd("C:/Users/Mohit/Documents/ExpDatAnalysis/exdata_data_household_power_consumption")
elec<-read.table(file="household_power_consumption.txt",header=TRUE,sep=";")

sub<-subset(elec,elec$Date %in% c('2/1/2007','2/2/2007'))

png("plot1.png",width=480,height=480)
hist(as.numeric(sub$Global_active_power),col="red",xlab="Global Active Power (kilowatts)")
dev.off()
