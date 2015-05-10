plot4<-function()
{
  power<-read.csv("household_power_consumption.txt", sep=";", na.strings="?")
  power<-subset(power, subset=(Date == "1/2/2007" | Date == "2/2/2007"))
  dt<-strptime(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S")
{
    attach(power)
    par(mfrow=c(2,2))
    
    plot(x=dt,y=power[,"Global_active_power"],type="l",ylab="Global Active Power",xlab="")
    
    plot(x=dt,y=power[,"Voltage"],type="l",ylab="Voltage",xlab="datetime")
    
    y1<-power[,"Sub_metering_1"]
    y2<-power[,"Sub_metering_2"]
    y3<-power[,"Sub_metering_3"]
    plot(dt,y1,type="l",col="black",ylab="Energy sub metering",xlab="")
    legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3") , lty=1, col=c("black", "red", "blue"),bty="n")
    lines(dt,y2,type="l",col="red")
    lines(dt,y3,type="l",col="blue")
    
    plot(x=dt,y=power[,"Global_reactive_power"],type="l",ylab="Golbal_reactive_power",xlab="datetime")
    
  }
  
{
  png(filename="plot4.png")
  attach(power)
  par(mfrow=c(2,2))
  
  plot(x=dt,y=power[,"Global_active_power"],type="l",ylab="Global Active Power",xlab="")

  plot(x=dt,y=power[,"Voltage"],type="l",ylab="Voltage",xlab="datetime")
  
  y1<-power[,"Sub_metering_1"]
  y2<-power[,"Sub_metering_2"]
  y3<-power[,"Sub_metering_3"]
  plot(dt,y1,type="l",col="black",ylab="Energy sub metering",xlab="")
  legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3") , lty=1, col=c("black", "red", "blue"),bty="n")
  lines(dt,y2,type="l",col="red")
  lines(dt,y3,type="l",col="blue")

  plot(x=dt,y=power[,"Global_reactive_power"],type="l",ylab="Golbal_reactive_power",xlab="datetime")
  
  dev.off()
}
}