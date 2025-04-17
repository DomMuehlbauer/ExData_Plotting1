# Open Device
png(filename = "plot3.png", width = 480, height = 480)

# Open plot and suppress default x-axis
plot(filtered_data$DateTime, filtered_data$Sub_metering_1,
     type = "l",
     xaxt = "n",
     xlab = "",
     ylab = "Energy sub metering",
     col = "black")

# Add lines for Sub_metering_2 and Sub_metering_3
lines(filtered_data$DateTime, filtered_data$Sub_metering_2, col = "red")
lines(filtered_data$DateTime, filtered_data$Sub_metering_3, col = "blue")

# Define daily tick positions and labels as weekdays
unique_days <- unique(as.Date(filtered_data$DateTime))
tick_positions <- as.POSIXct(unique_days)
axis(1, at = tick_positions, labels = weekdays(tick_positions))

# Add legend
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)

##Close Device
dev.off()