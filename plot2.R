# plot2.R

plot (newtimeunits,house$globAct, type = "l", 
      ylab = "Global Active Power (kilowatts)", xlab=NA)

dev.copy(png, file = "plot2.png", width = 480, height = 480) 
dev.off() # don't forget to do this!