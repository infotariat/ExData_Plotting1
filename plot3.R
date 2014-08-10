# plot3.R

plot(newtimeunits, house$subMet1, type ="l", col = "purple", 
     ylab = "Energy sub metering", xlab = NA)
lines (newtimeunits, house$subMet2, col="red")
lines (newtimeunits, house$subMet3, col = "blue")

legend ("topright", pch = "_", text.width = 60000,col = c("purple", "red", "blue"),
        legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png, file = "plot3.png", width = 480, height = 480) 
dev.off() # don't forget to do this!
