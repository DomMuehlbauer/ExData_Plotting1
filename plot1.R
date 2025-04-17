# Open Device
png(filename = "plot1.png", width = 480, height = 480)

# Create Histogram
hist(filtered_data$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     col = "red",
     ylim = c(0, 1200))

##Close Device
dev.off()