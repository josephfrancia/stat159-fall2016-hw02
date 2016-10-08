args=commandArgs(trailingOnly=TRUE)
data=read.csv(paste("../data/",args[1], sep=""))
reg_obj=lm(Sales~TV, data=data)
reg_summary=summary(reg_obj)

#Saving plot as png
png(filename="../images/scatterplot-tv-sales.png")
plot(data$TV, data$Sales, main="Scatterplot with Regression Line", xlab="TV Advertising Dollars Spent", ylab="Sales")
abline(reg_obj)
dev.off()

#Saving plot as pdf
pdf("../images/scatterplot-tv-sales.pdf")
plot(data$TV, data$Sales, main="Scatterplot with Regression Line", xlab="TV Advertising Dollars Spent", ylab="Sales")
abline(reg_obj)
dev.off()

save(data, reg_obj,reg_summary, file="../data/regression.RData")
#write.csv(data, file="/Users/josephfrancia/desktop/Fall_2016/Stats159/stat159-fall2016-hw02/data/Advertising.csv")
