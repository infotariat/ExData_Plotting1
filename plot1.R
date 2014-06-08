# code for chart #1
# global active power histogram

#import data
zap <- read.table("household_power_consumption.txt", header = TRUE, 
                  sep = ';')

global <- as.numeric(zap[66637:69516,3])
divbythou<-function(x){
        result<-x/1000
}
divbythou(global)

with(zap, hist(divbythou(global),xlim=c(0,6), ylim=c(0,1200), col="red", 
               main = "Global Active Power", xlab="Global Active Power (kilowatts)"))

     
  


