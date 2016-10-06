
args=commandArgs(trailingOnly=TRUE)
data=read.csv(paste("/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/data/",args[1], sep=""))
reg_obj=lm(TV~Sales, data=data)
reg_summary=summary(reg_obj)

#Saving plot as png
png(filename="/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/images/scatterplot-tv-sales.png")
plot(data$Sales, data$TV, main="Scatterplot with Regression Line", xlab="Sales", ylab="TV Advertisements")
abline(reg_obj)
dev.off()

#Saving plot as pdf
pdf("/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/images/scatterplot-tv-sales.pdf")
plot(data$Sales, data$TV, main="Scatterplot with Regression Line", xlab="Sales", ylab="TV Advertisements")
abline(reg_obj)
dev.off()

#save(data, reg_obj,reg_summary, file="/Users/josephfrancia/desktop/Fall_2016/Stats159/stat159-fall2016-hw02/data/regression.RData")
#write.csv(data, file="/Users/josephfrancia/desktop/Fall_2016/Stats159/stat159-fall2016-hw02/data/Advertising.csv")
