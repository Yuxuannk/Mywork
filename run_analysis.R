setwd("C:/Users/zhaoyuxuan/Documents/UCI HAR Dataset")

#First, read all the data.
Xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")
subtext<-read.table("./test/subject_test.txt")

Xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
subtrain<-read.table("./train/subject_train.txt")

acnames<-read.table("./activity_labels.txt")    
vanames<-read.table("./features.txt")

#Merge the data. 
test<-cbind(subtext,ytest,Xtest)
train<-cbind(subtrain,ytrain,Xtrain)
alldata<-rbind(test,train)
names(alldata)<-c('subject','activity_labels',as.character(vanames[,2]))

#Extract the measurements on the mean and standard deviation. 
#Find these columns whose names include mean or std.
index<-grepl("mean",names(alldata))|grepl("std",names(alldata))
mydata<-alldata[,!index]

#Uses descriptive activity names to name the activities in the data set.
acname<-as.character(acnames[,2])
for (i in 1:6){
  mydata[,2][which(mydata[,2]==i)]<-acname[i]
}

#To compute the average of each variable for each activity and each subject. 
#First, we need to paste the activity and subject to be used for dividing data 
#sets into groups. 
sub_act<-paste(mydata[,1],mydata[,2],sep="_")
newdata<-cbind(sub_act,mydata[,c(-1,-2)])
result<-aggregate(newdata[,-1],list(newdata$sub_act),mean)

#Write the data frame into the file.
setwd("C:/Users/zhaoyuxuan/Documents")
write.table(result,"myresult.txt")