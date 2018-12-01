data<-read.csv("C:\\Users\\tbsund\\Desktop\\Book1.csv",header=FALSE)
sum(data$V1)
cum.sum.1<-NULL
for(i in 1:nrow(data)){
  cum.sum.1[i]<-sum(data[1:i,])
}
cum.sum<-cum.sum.1
for(i in 1:1000){
  cum.sum.2<-NULL
  for(i in 1:nrow(data)){
    cum.sum.2[i]<-sum(data[1:i,])+cum.sum[length(cum.sum)]
  }
  cum.sum<-c(cum.sum,cum.sum.2)
  if(length(unique(cum.sum))<length(cum.sum)) break
}


nrows<-NULL
for(i in 1:length(unique(cum.sum[(length(cum.sum)-nrow(data)):length(cum.sum)]))){
  nrows[i]<-length(cum.sum[cum.sum==unique(cum.sum[(length(cum.sum)-nrow(data)):length(cum.sum)])[i]])
  print(i)
  if(nrows[i]==2) break
}
unique(cum.sum[(length(cum.sum)-nrow(data)):length(cum.sum)])[i]


