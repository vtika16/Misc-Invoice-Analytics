file <- "/Users/vtika/Documents/misc invoice t2 total.csv"

misc_invoice_total <- read.csv("/Users/vtika/Documents/misc invoice t2 total.csv", header = TRUE)


plot(misc_invoice_total$SubLease_Expiration_Month)

table(misc_invoice_total$Misc.invoice.treatment.concatenated) ##see total count of treatments

xyplot(Life.Exp ~ Income | region, data = state, layout = c(4,1)) #plot life expectency on y axix

data <- "/Users/vtika/Desktop/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if(!file.exists(data)) {
  unzip(data)
}

power <- read.table("/Users/vtika/Desktop/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";")

library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)


hist(misc_invoice_total$MLS_Standard_Rent_Unbilled_Months, ##for doing a regular histogram without device servicer bonus#
     main = "Distribution of Unbilled Months vs Servicer Bonus",
     xlab = "Unbilled Month",
     ylab = "Density",
     col = "light blue",
     probability = TRUE)
line(density(misc_invoice_total$MLS_Standard_Rent_Unbilled_Months))

qplot(misc_invoice_total$MLS_Standard_Rent_Unbilled_Months, geom = "historgram") #using qplot to show distribution


p <- ggplot(misc_invoice_total, aes(misc_invoice_total$MLS_Standard_Rent_Unbilled_Months))
p + stat_bin(binwidth = 1) + geom_histogram(aes(y = ..count..), col = "black", fill = "white",
                   binwidth = 1)


 geom_point(shape = 1) + geom_smooth(method=lm,
                                        se = FALSE)
