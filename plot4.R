plot4 <- function()
{
        v <- read.table("household_power_consumption.txt",
                        sep = ";",header = TRUE,skip = 66637,
                        nrows = 2879)
        png(file = "plot4.png")
        par(mfrow = c(2,2))
        x <- strptime(paste(v[[1]],v[[2]],sep=":"),format = "%d/%m/%Y:%H:%M:%S")
        #this plots the topleft corner graph
        plot(x,v[[3]],
             xlab = "",
             ylab = "Global Active Power",
             type = "l")
        
        #this plots the topright corner graph
        plot(x,v[[5]],
             xlab = "datetime",
             ylab = "Voltage",
             type = "l")
        #this plots the bottomleft corner graph
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
        #this plots the bottomright corner graph
        plot(x,v[[4]],
             xlab = "datetime",
             ylab = "Global_reactive_power",
             type = "l",
             lwd = 1)
        
        dev.off()
        
}