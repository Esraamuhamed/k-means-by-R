library(plyr)
library(cluster)
library(lattice)
library(graphics)
library(grid)
library(gridExtra)


df<-as.data.frame(USArrests)
wss <- numeric(15) 
for (k in 1:15) wss[k] <- sum(kmeans(df, centers=k, nstart=25)$withinss)
plot(1:15, wss, type="b", xlab="Number of Clusters", ylab="Within Sum of Squares") 

#The optimal number of clusters is 4, because at k=4 it appears to be the bend in the elbow.
abline(v=4)
print("The optimal number of clusters is 4")
