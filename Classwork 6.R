# Install and load necessary libraries
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Load the data from a CSV file
all <- read.csv(file.choose()) # Open ThreeClusters.csv
head(all)

# Create a scatter plot using qplot
qplot(data = all, x = V1, y = V2) # Kind of Obvious!!!

# Convert to a matrix as clustering works better on a matrix
mat <- cbind(all$V1, all$V2)
head(mat)

# Perform k-means clustering with 3 centers
kmeans_result <- kmeans(mat, centers = 3)

# Assign cluster labels to the original data
all$cl <- factor(kmeans_result$cluster)
head(all)
summary(all)

# Create a scatter plot with cluster coloring
qplot(data = all, x = V1, y = V2, color = cl) + ggtitle("K-means Clustering with 3 Clusters") + theme_minimal()


#2
all <- read.csv(file.choose()) #open Demographics.csv
head(all)
qplot(data=all, y=Internet.users) # All over the place!!
kmeans(all$Internet.users,centers=3) # divide into 3 groups based on Internet Usage
# lets draw it
km = kmeans(all$Internet.users,centers=3)$cluster # vector of cluster belonging
all$cl <- factor( km)
qplot(data=all, y=Internet.users, color=Income.Group)
qplot(data=all, y=Internet.users, color=cl)
qplot(data=all, y=Birth.rate) # All over the place!!
kmeans(all$Birth.rate,centers=3) # divide into 3 groups based on Internet Usage
# lets draw it
km = kmeans(all$Birth.rate,centers=3)$cluster # vector of cluster belonging
all$cl <- factor( km)
qplot(data=all, y=Birth.rate, color=Income.Group)
qplot(data=all, y=Birth.rate, color=cl)

#3
all <- read.csv(file.choose()) #open grades_km_input.csv
head(all)
qplot(data=all, y=English)
qplot(data=all, y=Math)
qplot(data=all, y=Science)
mat <- cbind(all$English, all$Math, all$Science)
head(mat)
kmeans(mat,centers=3) # divide into 3 groups
# lets draw it
km = kmeans(mat,centers=3)$cluster # vector of cluster belonging
all$cl <- factor( km)
# A bit hard to draw 4 columns
qplot(data=all, y=English, color=cl)
qplot(data=all, y=Math, color=cl)
qplot(data=all, y=Science, color=cl)
qplot(data=all, x=Science,y=English, color=cl)
qplot(data=all, x=Science,y=Math, color=cl)
qplot(data=all, x=Math, y=Science, color=cl)

#4
all <- read.csv(file.choose()) #open grades_km_input.csv
head(all)
install.packages("plot3D") # This is a cool library to draw 3D plots!
library("plot3D")
scatter3D(all$English,all$Math,all$Science)
mat <- cbind(all$English, all$Math, all$Science, col=NULL)
head(mat)
kmeans(mat,centers=3) # divide into 3 groups
# lets draw it
km = kmeans(mat,centers=3)$cluster # vector of cluster belonging

#5
all <- read.csv(file.choose()) #open grades_km_input.csv
head(all)
install.packages("plot3D")
library("plot3D")
scatter3D(all$English,all$Math,all$Science)
mat <- cbind(all$English, all$Math, all$Science, col=NULL)
head(mat)
wss <- rep(0,15) # remember this!
wss
for (k in 1:15)
  wss[k] <- sum( kmeans(mat,centers=k, nstart=50)$withinss)
wss
plot(wss, type="b") # see the ELBOW at index = 3, so 3 clusters is best
kmeans(mat,centers=3) # divide into 3 groups
# lets draw it
km = kmeans(mat,centers=3)$cluster # vector of cluster belonging
all$cl <- km
scatter3D(all$English,all$Math,all$Science, colvar=all$cl)

#6
# title: "Week 6 Demo"
# author: "Samah Senbel"
# date: "February 8, 2020"
# output: html_document
print("Hello kitty")
print("Hello kutty")


####################
