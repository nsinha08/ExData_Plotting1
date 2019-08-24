# Making plots: Examine how household energy usage varies over a 2-day period in February, 2007.

# Reading the data for 2007-02-01 and 2007-02-02

file_name <- "exdata_data_household_power_consumption.zip"
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Download the data files
if(!file.exists(file_name)) {
  download.file(fileUrl, file_name, method = "curl")
}

# Unzip the data files
if (!file.exists("household_power_consumption.txt")) { 
  unzip(file_name) 
}



dta <- read.csv("household_power_consumption.txt", na.strings = "?", header = T, sep = ";")

dta_1 <- subset(dta, Date %in% c("1/2/2007","2/2/2007"))
dta_1$Date <- as.Date(dta_1$Date, format="%d/%m/%Y")



# Create the plot and annotate it and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

# Plot 1

png("plot1.png", height = 480, width = 480)

with(dta_1, hist(Global_active_power, 
                 main = "Global Active Power", 
                 col = "red", 
                 xlab = "Global Active Power (kilowatts)"))

dev.off()
