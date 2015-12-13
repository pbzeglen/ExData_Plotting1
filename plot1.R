plot1 <- function()
{
        v <- read.table("household_power_consumption.txt",
                        sep = ";",header = TRUE,skip = 66637,
                        nrows = 2879)
        png(file = "plot1.png")
        hist(v[[3]],
             xlab = "Global Active Power (kilowatts)",
             main = "Global Active Power",
             col = "red1")
        dev.off()
        
}