# Open Device
png(filename = "plot4.png", width = 480, height = 480)

# Set 2x2 plotting area
par(mfrow = c(2, 2))

# Define weekday tick positions
unique_days <- unique(as.Date(filtered_data$DateTime))
tick_positions <- as.POSIXct(unique_days)
weekday_labels <- weekdays(tick_positions)

# --- Plot 1: Global Active Power
plot(filtered_data$DateTime, filtered_data$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power",
     xaxt = "n")
axis(1, at = tick_positions, labels = weekday_labels)

# --- Plot 2: Voltage
plot(filtered_data$DateTime, filtered_data$Voltage,
     type = "l",
     xlab = "Datetime",
     ylab = "Voltage",
     xaxt = "n")
axis(1, at = tick_positions, labels = weekday_labels)

# --- Plot 3: Sub Metering 1–3
plot(filtered_data$DateTime, filtered_data$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering",
     xaxt = "n",
     col = "black")
lines(filtered_data$DateTime, filtered_data$Sub_metering_2, col = "red")
lines(filtered_data$DateTime, filtered_data$Sub_metering_3, col = "blue")
axis(1, at = tick_positions, labels = weekday_labels)
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1,
       bty = "n")

# --- Plot 4: Global Reactive Power
plot(filtered_data$DateTime, filtered_data$Global_reactive_power,
     type = "l",
     xlab = "Datetime",
     ylab = "Global Reactive Power",
     xaxt = "n")
axis(1, at = tick_positions, labels = weekday_labels)

##Close Device
dev.off()