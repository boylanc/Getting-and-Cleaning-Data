#You should create one R script called run_analysis.R that does the following: 
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# In the README: 
# Download the compressed data file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# Extract the contents of the file (The UCI HAR Dataset folder) into your working directory. 
library(data.table)

#1. Read in the following from file and merge
#- subject_test.txt
#- x_test.txt
#- y_test.txt
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt", quote="\"", comment.char="")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")
test <- cbind(X_test, cbind(subject_test, Y_test))

#-subject_train.txt
#-x_train.txt
#-y_train.txt
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt", quote="\"", comment.char="")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")
train <- cbind(X_train, cbind(subject_train, Y_train))

#Merge those two resultant sets together.
testtrain <- rbind(test, train)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#Read in the column names for the data set
features <- read.table("./UCI HAR Dataset/features.txt", 
                       stringsAsFactors = FALSE, quote="\"", comment.char="", 
                       col.names=c("index", "name"))
cols <- c(as.vector(features$name), "subject", "activity")
names(testtrain) <- cols

#Create a subset restricted to those with names containing mean or std
features.meanstd <-rbind(features[grep("mean\\(\\)", features$name, ignore.case=TRUE), ], features[grep("std\\(\\)" , features$name, ignore.case=TRUE), ])
#include subject and activity columns
meanstdind <- c(features.meanstd$index, 562, 563)
testtrain.meanstd <- testtrain[, meanstdind]

#3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE, quote="\"", comment.char="", col.names=c("index", "activityname"))
testtrain.meanstdjoin <- left_join(testtrain.meanstd ,activity, by = c("activity" = "index"))

#4. Appropriately labels the data set with descriptive variable names. 
cols <- as.vector(names(testtrain.meanstdjoin))
#Make all variables lower case
cols <- tolower(cols)

#Remove the () in the names and expand the abbrivations to human readable form.
cols <- gsub("\\(\\)", "", cols)
cols <- gsub("acc", "acceleration", cols)
cols <- gsub("gyro", "gyroscope", cols)
cols <- gsub("mag", "magnitude", cols)
cols <- gsub("tgravity", "timegravity", cols)
cols <- gsub("tbody", "timebody", cols)
cols <- gsub("fbody", "frequencybody", cols)

#Assign the names to the columns
names(testtrain.meanstdjoin) <- cols


# 5. Create a data set with the average of each variable for each activity and each subject.
final <- summarise_each(group_by(testtrain.meanstdjoin, subject, activityname), 
                        funs(mean))
# remove the activity column as we have the activity name providing this information already.
# No need for redundant information in the final data set.
final <- final[,1:68]

write.table(final, file="tidydata.txt", row.names=FALSE)