setwd("/home/wannamit/R/ExData_Plotting1")


header <- read.table("household_power_consumption.txt", nrows = 1, sep = ';')
electric_data <- read.table("household_power_consumption.txt", skip = 66637, sep = ';', na.strings = '?', nrows = 2880)
colnames(electric_data) <- unlist(header[1,])

x <- strptime(paste(electric_data$Date, electric_data$Time, sep = " "), format = '%d/%m/%Y %H:%M:%S')
y_met1 <- as.numeric(electric_data$Sub_metering_1)
y_met2 <- as.numeric(electric_data$Sub_metering_2)
y_met3 <- as.numeric(electric_data$Sub_metering_3)

plot(x = x, y = y_met1, ylab = "Energy sub metering", xlab = "", type = 'l')
points(x = x, y = y_met2, col = 'red', type = 'l')
points(x = x, y = y_met3, col = 'blue', type = 'l')

y_active <- as.numeric(electric_data$Global_active_power)
plot(x = x, y = y_active, ylab = "Global Active Power", xlab = "", type = 'l')

y_volt <- as.numeric(electric_data$Voltage)
plot(x = x, y = y_volt, xlab = 'datetime', ylab = 'Voltage', type = 'l')

y_volt <- as.numeric(electric_data$Global_reactive_power)
plot(x = x, y = y_volt, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
