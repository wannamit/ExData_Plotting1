setwd("/home/wannamit/R/ExData_Plotting1")


header <- read.table("household_power_consumption.txt", nrows = 1, sep = ';')
electric_data <- read.table("household_power_consumption.txt", skip = 66637, sep = ';', na.strings = '?', nrows = 2880)
colnames(electric_data) <- unlist(header[1,])

x <- strptime(paste(electric_data$Date, electric_data$Time, sep = " "), format = '%d/%m/%Y %H:%M:%S')
y1 <- as.numeric(electric_data$Sub_metering_1)
y2 <- as.numeric(electric_data$Sub_metering_2)
y3 <- as.numeric(electric_data$Sub_metering_3)

plot(x = x, y = y1, ylab = "Energy sub metering", xlab = "", type = 'l')
points(x = x, y = y2, col = 'red', type = 'l')
points(x = x, y = y3, col = 'blue', type = 'l')