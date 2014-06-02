t = read.table("household_power_consumption.txt", skip = 66637, nrows = 2880, sep = ";")
names(t) = c("Date", "Time", "Glob_act_power", "Glob_react_pow", "volt", "inten", "m1", "m2", "m3")

png(filename = "plot2.png")
dts = as.POSIXct(paste(t$Date, t$Time), format = "%d/%m/%Y %H:%M:%S")
plot(dts, t$Glob_act_power, type = 'l', xlab = " ", ylab = "")
title(xlab = "", ylab = "global Active Power (kilowatts)")
dev.off()