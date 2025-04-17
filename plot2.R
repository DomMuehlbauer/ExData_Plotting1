# Open Device
png(filename = "plot2.png", width = 480, height = 480)

# Create Linegraph
plot(filtered_data$DateTime,
     filtered_data$Global_active_power,
     type = "l",                     # "l" for line graph
     xaxt = "n",
     xlab = "",                      # Remove x-axis label (optional)
     ylab = "Global Active Power (kilowatts)",
     main = "Global Active Power Over Time",
     col = "black")

# Define positions for ticks — one per day
unique_days <- unique(as.Date(filtered_data$DateTime))
tick_positions <- as.POSIXct(unique_days)

# Add custom x-axis with weekday names
axis(1, at = tick_positions, labels = weekdays(tick_positions))

##Close Device
dev.off()