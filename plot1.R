header <- read.table("household_power_consumption.txt", nrows = 1, sep = ';')
electric_data <- read.table("household_power_consumption.txt", skip = 66637, sep = ';', na.strings = '?', nrows = 2880)
colnames(electric_data) <- unlist(header[1,])

img <- png('plot1.png', height = 480, width = 480)

hist(x = as.numeric(electric_data$Global_active_power), xlab = "Global Active Power (kilowatts)", col = 'red', main = NULL)

title(main = "Global Active Power")
dev.off()
