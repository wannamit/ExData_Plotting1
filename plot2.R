header <- read.table("household_power_consumption.txt", nrows = 1, sep = ';')
electric_data <- read.table("household_power_consumption.txt", skip = 66637, sep = ';', na.strings = '?', nrows = 2880)
colnames(electric_data) <- unlist(header[1,])

img <- png('plot2.png', height = 480, width = 480)

x <- strptime(paste(electric_data$Date, electric_data$Time, sep = " "), format = '%d/%m/%Y %H:%M:%S')
y <- as.numeric(electric_data$Global_active_power)
plot(x = x, y = y, ylab = "Global Active Power (kilowatts)", xlab = "", type = 'l')

title()
dev.off()