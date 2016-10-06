args=commandArgs(trailingOnly=TRUE)
data=read.csv(cat("/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/data/",args[1], sep=""))

#TV Histogram
tv_summary=summary(data$TV)
cat("TV Summary Statistics\n\n", file="/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/data/eda-output.txt")

png(filename="/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/images/histogram-tv.png")
hist(data$TV)
dev.off()

pdf("/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/images/histogram-tv.pdf")
hist(data$TV)
dev.off()

#Sales Histogram
summary(data$Sales)

png(filename="/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/images/histogram-sales.png")
hist(data$Sales)
dev.off()

pdf("/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/images/histogram-sales.pdf")
hist(data$Sales)
dev.off()


#Sales and TV textfiles
sink(file="/Users/josephfrancia/Desktop/Fall_2016/Stats159/stat159-fall2016-hw02/data/eda-output.txt")
summary(data$TV)
summary(data$Sales)
sink()