library(cluster)
library(factoextra)
#setwd("C:/Users/Divya Jan/Documents/BME 303 Computing/Bioinformatics")

#determine number of clusters to use
k.max<- 15
wss <- sapply(2:k.max, function(k){kmeans(BRCA_geneExp, k, nstart=10 )$tot.withinss})

#print(wss)

plot(2:k.max, wss, type="b", pch = 19,  xlab="Number of clusters K", ylab="Total within-clusters sum of squares")

#Plot Kmeans Clustering
km_res <- kmeans(BRCA_geneExp, centers = 3, nstart = 20)
fviz_cluster(km_res, BRCA_geneExp, ellipse.type = "norm")

#fviz_nbclust(LUAD_geneExp, kmeans, method = "wss") + geom_vline(xintercept = 3, linetype = 2)
#fviz_nbclust(LUAD_geneExp, kmeans, method = "silhouette") +
  #labs(subtitle = "Silhouette method")
