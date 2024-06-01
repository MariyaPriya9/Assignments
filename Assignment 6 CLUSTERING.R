# Install and load necessary libraries
install.packages("factoextra")
library(ggplot2)
library(cluster)
library(factoextra)

# Load the dataset
data("USArrests")

# Scale the data
usarrests_scaled <- scale(USArrests)

# optimal number of clusters using the Elbow method
fviz_nbclust(usarrests_scaled, kmeans, method = "wss") +
  labs(subtitle = "Elbow method")

# Set seed for reproducibility
set.seed(123)

# Perform k-means clustering with 3 clusters
kmeans_result <- kmeans(usarrests_scaled, centers = 3, nstart = 25)

# Add the cluster assignments to the original dataset
USArrests$Cluster <- as.factor(kmeans_result$cluster)

# Visualize the clusters
fviz_cluster(kmeans_result, data = usarrests_scaled, geom = "point") +
  labs(title = "K-means Clustering of USArrests Dataset", 
       x = "Component 1", y = "Component 2")

# Print the cluster centers
print(kmeans_result$centers)

# Print the size of each cluster
print(table(USArrests$Cluster))
