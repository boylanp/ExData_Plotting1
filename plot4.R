t = read.table("household_power_consumption.txt", skip = 66637, nrows = 2880, sep = ";")
names(t) = c("Date", "Time", "Glob_act_power", "Glob_react_pow", "volt", "inten", "m1", "m2", "m3")
dts = as.POSIXct(paste(t$Date, t$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png")
#windows()
par(mfrow = c(2, 2))
#Plot 1
plot(dts, t$Glob_act_power, type = 'l', xlab = "", ylab = "Global Active Power")

#Plot 2 
plot(dts, t$volt, type = "l", xlab = "datetime", ylab = "Voltage")

#Plot 3
plot(dts, t$m1, type = 'l', col = "black", ylab = "", xlab = "")
lines(dts, t$m2, type = 'l', col = "red")
lines(dts, t$m3, type = 'l', col = "blue")
title(xlab = "", ylab = "Energy sub metering")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"), bty = "n")

#Plot 4
plot(dts, t$Glob_react_pow, type = "l", xlab = "datetime", ylab="Global_reactive_power")

dev.off()