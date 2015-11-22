---
title: "Getting and Cleaning Data - Course Project README"
author: "Clint Boylan"
date: "22 November 2015"
---

## Project Description
Experiments were carried out with a group of 30 volunteers between 19-48 years old. This group performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone.
Various metrics were captured from these activities.

The main objective of the project is to take this captured data and transform it into a more meaningful tidy data set, with supporting documentation such as this CodeBook document.

###Collection of the raw data
The compressed data file containing the data and relevant documentation can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Assumptions
It is assumed that the data.table library is already installed.
If this is not installed, you will need to install this package.

###Guide to create the tidy data file
The following steps are taken to create the tidy data:
1. Download the compressed data file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Extract the contents of the file (The UCI HAR Dataset folder) into your working directory
3. Copy the run_analysis.R script into your working directory.
4. Run the run_analysis.R script.

This generates a tidy data set will be written to the tidydata.txt file in the working directory.

### Principals of Tidy Data
This meets the principals of tidy data as:
- Each variable you measure should be in one column
- Each different observation of that variable should be in a different row
- There should be one table for each "kind" of variable
- Include a row at the top of each file with variable names.
- The variables are human readable.
- Data should be saved in one file per table.

###Cleaning of the data
The cleaning script:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates an independent tidy data set with the average of each variable for each activity and each subject.

### Extracting only the measurements on the mean and standard deviation for each measurement.
- It was decided that this subset would include on the columns where the feature name contained mean() or std(). The variables of type meanFreq() were not included.

### Activity Names
It was decided that the activity names were sufficient in their current form and were left as they were listed in the original data.

### Descriptive Variable Names
The decision was made to expand the original variable names into more descriptive names by ensuring the variable names were:
- All lower case when possible
- Descriptive (magnitude rather than mag)
- Not duplicated
- Not have underscores, brackets, dots or white spaces

### Independant tidy set with the average of each variable
Finally, the data was grouped for each of the 30 subjects performing each of the 6 activities. From each of these 180 sub groups, the average was calculated for all variables to form the final output table.

