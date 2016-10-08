args=commandArgs(trailingOnly=TRUE)
data=read.csv(paste("../data/",args[1], sep=""))

#TV Histogram
tv_summary=summary(data$TV)

png(filename="../images/histogram-tv.png")
hist(data$TV, main="Distribution of Dollar Amount Spent on TV Advertising")
dev.off()

pdf("../images/histogram-tv.pdf")
hist(data$TV, main="Distribution of Dollar Amount Spent on TV Adverising")
dev.off()

#Sales Histogram
summary(data$Sales)

png(filename="../images/histogram-sales.png")
hist(data$Sales, main="Distribution of Sales")
dev.off()

pdf("../images/histogram-sales.pdf")
hist(data$Sales, main="Distribution of Sales")
dev.off()


#Sales and TV textfiles
sink(file="../data/eda-output.txt")
summary(data$TV)
summary(data$Sales)
sink()