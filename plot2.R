# Plot 2

# Creating a DateTime variable 

dta_1$DateTime <- as.POSIXct(strptime(paste(dta_1$Date, dta_1$Time, sep = " "),format = "%Y-%m-%d %H:%M:%S"))

png("plot2.png", height = 480, width = 480)

with(dta_1, plot(DateTime, Global_active_power, 
                 type = "l", 
                 xlab = "", 
                 ylab = "Global Active Power (kilowatts)"))

dev.off()

