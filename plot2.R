plot2 <- function()
{
        v <- read.table("household_power_consumption.txt",
                        sep = ";",header = TRUE,skip = 66637,
                        nrows = 2879)
        png(file = "plot2.png")
        x <- strptime(paste(v[[1]],v[[2]],sep=":"),format = "%d/%m/%Y:%H:%M:%S")
        plot(x,v[[3]],
             xlab = "",
             ylab = "Global Active Power (kilowatts)",
             type = "l")
        dev.off()
        
}