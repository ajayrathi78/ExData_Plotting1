source("EDA_CR1_Read.R")
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "blue", 
     main = "Global_Active_Power", 
     xlab = "Global_Active_Power (kw)",
     breaks = 12, ylim = c(0, 1200))
dev.off()