plot3 <- function()
{
        v <- read.table("household_power_consumption.txt",
                        sep = ";",header = TRUE,skip = 66637,
                        nrows = 2879)
        png(file = "plot3.png")
        x <- strptime(paste(v[[1]],v[[2]],sep=":"),format = "%d/%m/%Y:%H:%M:%S")
        plot(x,v[[7]],
             xlab = "",
             ylab = "Energy sub metering",
             col = "black",
             type = "l")
        points(x,v[[8]],
               col = "red",
             type = "l")
        points(x,v[[9]],
               col = "blue",
               type = "l")
        legend("topright",lty = c(1,1,1),col = c("black","red","blue"),
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        dev.off()
        
}