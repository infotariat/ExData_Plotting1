# plot4.R


par(mfrow = c(2,2), mar = c(4,4,4,2))
with (house ,{
        plot(newtimeunits, house$globAct, type = "l", xlab = NA, 
             ylab = "Global Active Power")
        plot (newtimeunits, house$volt, type = "l", xlab = "datetime",
              ylab = "Voltage")
        axis (2, seq(1,7,2))
        plot(newtimeunits, house$subMet1, type ="l", col = "purple", 
             ylab = "Energy sub metering", xlab = NA)
        lines (newtimeunits, house$subMet2, col="red")
        lines (newtimeunits, house$subMet3, col = "blue")
         
        legend ("topright",bty="n",text.width = 50000, pch = "_", col = c("purple", "red", "blue"),
                legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        plot (newtimeunits, house$globReact, type = "l", 
              ylab = "Global_reactive_power", xlab = "datetime")
        axis (2, seq(1,6,.1))
        
        })

dev.copy(png, file = "plot4.png", width = 480, height = 480) 
dev.off() # don't forget to do this!

