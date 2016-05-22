# Getting-and-Cleaning-Data-Course-Project

##Introduction
"The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis."   A dataset is downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

run_analysis.R is created to do:

"1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. "

##Analysis Script

run_analysis.R

1. The script download, upzip and read files from the above link
2. It labels the train and test datasets with subject and descriptive activity
3. It gives the descriptive names in the features.txt to the varibles in the datasets.
3. It combines the train and test datasets
4. It extracts only the measurements on the mean and standard deviation for each measurement.
5. It creates and outputs a new tidy dataset with the average of each variable for each activity and each subject.

##Output
newTidyData.txt

##CodeBook
CodeBook.md.  It describles the variables and summaries calculated in run_analysis.R
