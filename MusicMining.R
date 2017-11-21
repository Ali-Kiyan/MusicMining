music <- read.csv("music.csv", header=T)
library(cluster)
nrml <- music[,-c(2, 3, 4, 5, 6, 14, 15, 16, 17, 18, 19, 20, 23, 25, 27, 30, 31, 33, 34)]
nrml[nrml$year == "0", "year"] <- NA
nrml <- music[complete.cases(music),]
nrml
dim(nrml)
