# Plot 4

png("plot4.png", height = 480, width = 480)

par(mfrow = c(2,2))

# Plot 1/4
with(dta_1, plot(DateTime, Global_active_power, 
                 type = "l", 
                 xlab = "", 
                 ylab = "Global Active Power"))



# Plot 2/4
with(dta_1, plot(DateTime, Voltage, 
                 type = "l", 
                 xlab = "datetime", 
                 ylab = "Voltage"))

# Plot 3/4

with(dta_1, plot(DateTime, Sub_metering_1,
                 col = "black",
                 type = "l", 
                 xlab = "", 
                 ylab = "Energy sub metering"))

with(dta_1, points(DateTime, Sub_metering_2, type = "l", col = "red"))
with(dta_1, points(DateTime, Sub_metering_3, type = "l", col = "blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot 4/4

with(dta_1, plot(DateTime, Global_reactive_power, 
                 type = "l", 
                 xlab = "datetime", 
                 ylab = "Global_reactive_power"))


dev.off()
