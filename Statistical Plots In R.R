rr=data.frame(rivers)
head(rr)
library("ggplot2")
#histogram          
r <- ggplot(rr, aes(x=rivers))
r + geom_histogram(binwidth = 60,color="blue",fill="red") + ggtitle("Histogram of Rivers") + xlab("Rivers") + ylab("Miles")
#boxplot
r.boxplot<-ggplot(rr, aes(x="Miles", y=rivers))
r.boxplot + geom_boxplot() + xlab(" ")
#outliers
summary(rivers)
IQR<- 505.5 - 341.8
outlier_range<- IQR * 1.5
505.5 + outlier_range
341.8 + outlier_range
#anything below 587.35 or above 751.05 is an outlier. The outliers in this plot are high.

#Normal Probability Plot

ggplot(rr, aes(sample = rivers)) + geom_qq()

#Yes the data come from a normal distribution.

#alternative codes
rr1 <- ggplot(rr, aes(y = rivers))
rr1
rr1 + geom_histogram(binwidth=30, fill="deepskyblue4", color="white") + ggtitle("Histogram of River Lengths in North America") + xlab("Length (in miles)") + ylab("Count")
#now to get the boxplot, you need to change the aesthetic above from x to y
rr1 + geom_boxplot(outlier.color="red", fill="deepskyblue4") + ylab("Length (in miles)") + xlab("")
#and then to get the last part about normal distribution:
ggplot(rr, aes(sample=rivers, color="red")) + geom_qq()

summary(rivers)














