t = read.table("household_power_consumption.txt", skip = 66637, nrows = 2880, sep = ";")
names(t) = c("Date", "Time", "Glob_act_power", "Glob_react_pow", "volt", "inten", "m1", "m2", "m3")

png(filename = "plot1.png")
hist(t$Glob_act_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "")
title(main = "Global Active Power")
dev.off()