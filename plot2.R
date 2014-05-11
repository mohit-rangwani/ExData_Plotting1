##For Exploratory data analysis by Roger Peng Assignment 1

setwd("C:/Users/Mohit/Documents/ExpDatAnalysis/exdata_data_household_power_consumption")
elec<-read.table(file="household_power_consumption.txt",header=TRUE,sep=";")

sub<-subset(elec,elec$Date %in% c('2/1/2007','2/2/2007'))
sub1<-sub
sub1$ND<-as.Date(sub$Date,format="%d/%m/%Y")

sub1$WeekDay<-weekdays(as.Date(sub1$ND,'%d/%m/%Y'),abbr=TRUE)


png("plot1.png",width=480,height=480)
plot(sub1$Global_active_power,sub1$Weekday,type="n",ylab="Global Active Power",xlab=sub1$Weekday)
lines(sub1$Global_active_power,sub1$Weekday)
dev.off()
