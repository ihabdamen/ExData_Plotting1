Plot1Function <- function()
{
  png("plot1.png", width = 480, height = 480)
  
x <- read.csv("household_power_consumption.txt",sep =";")
x[,"Date"] <- as.Date( x[,"Date"],"%d/%m/%Y")
i <- subset(x, Date>="2007-02-01" & Date<="2007-02-02")
i[,"Global_active_power"] <- as.numeric(i[,"Global_active_power"])

hist(i[,"Global_active_power"],col = "RED",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")


dev.off()
}