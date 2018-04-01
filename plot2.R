# read the file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")

#Subsetting the required data
data_req <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


datetime <- strptime(paste(data_req$Date, data_req$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data_req$Global_active_power)

#Plotting the data 

png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()