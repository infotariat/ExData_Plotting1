# plot1.R

# this code assumes you have used another file of code to download 
# the data set  
hist(house$globAct, col="red", main = "Global Active Power", 
     xlab="Global Active Power (kilowatts)")


# create the png file
dev.copy(png, file = "plot1.png", width = 480, height = 480) 
dev.off() # don't forget to do this!
