header <- read.table("household_power_consumption.txt", nrows = 1, sep = ';')
electric_data <- read.table("household_power_consumption.txt", skip = 66637, sep = ';', na.strings = '?', nrows = 2880)
colnames(electric_data) <- unlist(header[1,])

img <- png('plot3.png', height = 480, width = 480)

x <- strptime(paste(electric_data$Date, electric_data$Time, sep = " "), format = '%d/%m/%Y %H:%M:%S')
y1 <- as.numeric(electric_data$Sub_metering_1)
y2 <- as.numeric(electric_data$Sub_metering_2)
y3 <- as.numeric(electric_data$Sub_metering_3)

plot(x = x, y = y1, ylab = "Energy sub metering", xlab = "", type = 'l')
points(x = x, y = y2, col = 'red', type = 'l')
points(x = x, y = y3, col = 'blue', type = 'l')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = 1)

title("")
dev.off()