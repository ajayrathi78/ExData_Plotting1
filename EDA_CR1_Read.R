filename <- "./household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data) 
attach(data)
subset <- Date == "1/2/2007" | Date == "2/2/2007"
power_subset_data <- data[subset, ]
attach(power_subset_data)
x <- paste(Date, Time)
power_subset_data$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(power_subset_data) <- 1:nrow(power_subset_data)
dim(power_subset_data) 
attach(power_subset_data)
