# Plot 3

png("plot3.png", height = 480, width = 480)

with(dta_1, plot(DateTime, Sub_metering_1,
                  col = "black",
                  type = "l", 
                  xlab = "", 
                  ylab = "Energy sub metering"))

with(dta_1, points(DateTime, Sub_metering_2, type = "l", col = "red"))
with(dta_1, points(DateTime, Sub_metering_3, type = "l", col = "blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"), 
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
