plot2<-function()
{
  power<-read.csv("household_power_consumption.txt", sep=";", na.strings="?")
  power<-subset(power, subset=(Date == "1/2/2007" | Date == "2/2/2007"))
  dt<-strptime(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S")

{
  
 plot(x=dt,y=power[,"Global_active_power"],type="l",ylab="Global Active Power (kilowatts)",xlab="")
 dev.copy(png,file="plot2.png",height=480,width=480)
 dev.off()
}

}