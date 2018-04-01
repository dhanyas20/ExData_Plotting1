# Read the file 

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")

#Subsetting the required data

data_req <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(data_req$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()