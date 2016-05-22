#download and unzip the file from the given link
if (!file.exists("./data")) {dir.create("./data")}
library(downloader)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(fileUrl, dest="./data/smartphone.zip",mode="wb")
unzip("./data/smartphone.zip", exdir="./data")

#read files into R
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
y_test<-read.table("./data/UCI HAR Dataset/test/y_test.txt")
features<-read.table("./data/UCI HAR Dataset/features.txt")
activity_labels<-read.table("./data/UCI HAR Dataset/activity_labels.txt")
X_train<-read.table("./data/UCI HAR Dataset/train/X_train.txt")
X_test<-read.table("./data/UCI HAR Dataset/test/X_test.txt")
subject_train<-read.table("./data/UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("./data/UCI HAR Dataset/test/subject_test.txt")


#combine X_train with subject_train, do the same for X_test and subject_test files.
names(subject_train)<-c("subject")
names(subject_test)<-c("subject")
X_train<-cbind(X_train,subject_train)
X_test<-cbind(X_test,subject_test)

#give names listed in features to virables in X_train and X_test
featuresNames<-features$V2
colnames(X_train)<-c(as.character(featuresNames),"subject")
colnames(X_test)<-c(as.character(featuresNames),"subject")

#Use descriptive activity names to name the activities in the train dataset
names(activity_labels)<-c("newV1","activity")
names(y_train)<-c("newV1")
train<-cbind(y_train,X_train)
trainActivity<-merge(train,activity_labels,by=("newV1"))

#Use descriptive activity names to name the activities in the test dataset
names(y_test)<-c("newV1")
test<-cbind(y_test,X_test)
testActivity<-merge(test, activity_labels, by=("newV1"))


#Merge the subject and activity labelled train and test datasets to one data set, called data.
data<-rbind(trainActivity, testActivity)


#Extract only the measurements on the mean and standard deviation for each measurement.
extractedFeaturesNames<-features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
extractedNames<-c(as.character(extractedFeaturesNames), "subject", "activity")
tidyData<-subset(data,select=extractedNames)


#label the data set with descriptive variable names
names(tidyData)<-gsub("^t", "time", names(tidyData))
names(tidyData)<-gsub("^f", "frequency", names(tidyData))
names(tidyData)<-gsub("Acc", "Accelerometer", names(tidyData))
names(tidyData)<-gsub("Gyro", "Gyroscope", names(tidyData))
names(tidyData)<-gsub("Mag", "Magnitude", names(tidyData))
names(tidyData)<-gsub("BodyBody", "Body", names(tidyData))


#create a new tidy data set with the average of each variable for each activity and each subject, and output it.
library(plyr)
newTidyData<-aggregate(. ~subject + activity, tidyData, mean)
newTidyData<-newTidyData[order(newTidyData$subject,newTidyData$activity),]
write.table(newTidyData, file = "./data/newtidyData.txt",row.name=FALSE)



