require("dplyr")

#Downloading and extracting the files
if (!file.exists("./UCI HAR Dataset")){
    fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"   
    download.file(fileURL,destfile="./GCDData.zip")
    unzip("./GCDData.zip", exdir="./data")
}

#Reading the tables into R
features<-read.table("./UCI HAR Dataset/features.txt")
varnames<-make.names(features[,2],unique=TRUE)
subj_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test<-read.table("./UCI HAR Dataset/test/Y_test.txt")
subj_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
labels<-read.table("./UCI HAR Dataset/activity_labels.txt")

#Matching up the activity labels with the Y data sets
Y_test<-merge(Y_test,labels,by="V1")
Y_train<-merge(Y_train,labels,by="V1")

#Renaming variables
Y_test<-rename(Y_test, Label=V1, Activity=V2)
Y_train<-rename(Y_train, Label=V1, Activity=V2)
names(X_test)<-varnames
names(X_train)<-varnames
subj_test<-rename(subj_test,id=V1)
subj_train<-rename(subj_train,id=V1)

#Merging all of the test and train sets to make a single large dataset
test<-cbind(subj_test,X_test,Y_test)
train<-cbind(subj_train,X_train,Y_train)
final<-rbind(test,train)

#Cutting down to id and mean and standard deviation vars
#mvars=c(2:6,42:47,82:87,122:127,162:167,202,203,215,216,228,229,241,242,267:272,346:351,425:430)
output<-final%>%
    select(id,contains("mean."),contains("std."),Activity,-contains("angle"))%>%
    group_by(Activity,id)%>%
    summarise_each(funs(mean))

write.table(output,file="./tidy.txt",row.names=FALSE)
