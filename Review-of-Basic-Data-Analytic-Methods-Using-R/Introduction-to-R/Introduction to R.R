
setwd("C:/Users/Sri/Documents/GitHub/RWD/EMCDSA-E20-007/Review-of-Basic-Data-Analytic-Methods-Using-R/Introduction-to-R")
########Introduction to R##############
#import a CSV file of the totatl annaual sales for each customer
sales <- read.csv("yearly_sales.csv") 
#examin the imported data set
head(sales) 
summary(sales)
str(sales)
#plot number of orders vs sales
plot(sales$num_of_orders,sales$sales_total,main = "Number of Orders vs Sales")
#perform statistical analysis (fit a linear regression model)
results <- lm(sales$sales_total ~ sales$num_of_orders)
results
summary(results)
attributes(results)
#perform some diagnostics on the fittered model
#plot histogram of the residuals
hist(results$residuals,breaks = 800)
#########R Graphical User Interfaces##############
