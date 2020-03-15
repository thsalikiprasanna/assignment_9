setwd("/Users/anilpinnamaneni/Documents/R/Assignment9/")
data = read.csv("melanoma.csv")
library(ggplot2)


data$sex <- as.factor(data$sex)
data$ulcer <- as.factor(data$ulcer)
hist(data$age,main="The distribution of age across patients",
     xlab = "The age of the patients")
  


plot(data$age, data$thickness,main = "Scatter plot of Age and Thickness of ulcer",
     xlab = "The age of the patients",
     ylab = "The thickness of the ulcer")

a <- ggplot(data, aes(x = thickness))
a + geom_area(aes(fill = ulcer), color = "white", 
              stat ="bin", bins = 30) +
  scale_fill_manual(values = c("#00AFBB", "#E7B800")) + ggtitle("Plot of thickness of ulcer")







a <- ggplot(data, aes(x = age))
a + geom_histogram(bins = 30, color = "black", fill = "gray")
