---
title: "Course Project Codebook"
author: "Clint Boylan"
date: "22 November 2015"
---

## Project Description
Experiments were carried out with a group of 30 volunteers between 19-48 years old. This group performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone.
Various metrics were captured from these activities.

The main objective of the project is to take this captured data and transform it into a more meaningful tidy data set, with supporting documentation such as this CodeBook document.

##Study design and data processing

###Collection of the raw data
The compressed data file containing the data and relevant documentation can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Notes on the original (raw) data 
The following is an taken from the README documentation describing the raw data in the zip file listed above.

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment."

The following is taken from the features_info.txt file referred to above it hat is also contained in the zip file listed above. This provides a detailed explantion for the raw columns. 
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation"


##Creating the tidy datafile

###Guide to create the tidy data file
The following steps are taken to create the tidy data:
1. Download the compressed data file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Extract the contents of the file (The UCI HAR Dataset folder) into your working directory
3. Copy the run_analysis.R script into your working directory.
4. Run the run_analysis.R script.

The tidy data set will be written to the tidydata.txt file in the working directory.

###Cleaning of the data
The cleaning script:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates an independent tidy data set with the average of each variable for each activity and each subject.

Further explanation can be found in the README document at:  [https://github.com/boylanc/Getting-and-Cleaning-Data/blob/master/README.md]

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

The descriptors for this variable are are follows:
time: time domain signals
frequency: frequency domain signals
bodyacceleration/gravityacceleration: the acceleration signal was then separated into body and gravity acceleration signals.
jerk - the body linear acceleration was derived in time to obtain Jerk signals
magnitude - 
gyroscope
mean - the value is the mean value estimated from these signals.
std - the value is the standard deviation estimated from these signals.
xyz is used to denote 3-axial signals in the X, Y and Z directions.

###Variable 1. timebodyacceleration-mean-x   
This is the average 
                 
###Variable 2. timebodyacceleration-mean-y                    
###Variable 3. timebodyacceleration-mean-z                    
###Variable 4. timegravityacceleration-mean-x                 
###Variable 5. timegravityacceleration-mean-y                 
###Variable 6. timegravityacceleration-mean-z                 
###Variable 7. timebodyaccelerationjerk-mean-x                
###Variable 8. timebodyaccelerationjerk-mean-y                
###Variable 9. timebodyaccelerationjerk-mean-z                
###Variable 10. timebodygyroscope-mean-x                       
###Variable 11. timebodygyroscope-mean-y                       
###Variable 12. timebodygyroscope-mean-z                       
###Variable 13. timebodygyroscopejerk-mean-x                   
###Variable 14. timebodygyroscopejerk-mean-y                   
###Variable 15. timebodygyroscopejerk-mean-z                   
###Variable 16. timebodyaccelerationmagnitude-mean             
###Variable 17. timegravityaccelerationmagnitude-mean          
###Variable 18. timebodyaccelerationjerkmagnitude-mean         
###Variable 19. timebodygyroscopemagnitude-mean                
###Variable 20. timebodygyroscopejerkmagnitude-mean            
###Variable 21. frequencybodyacceleration-mean-x               
###Variable 22. frequencybodyacceleration-mean-y               
###Variable 23. frequencybodyacceleration-mean-z               
###Variable 24. frequencybodyaccelerationjerk-mean-x           
###Variable 25. frequencybodyaccelerationjerk-mean-y           
###Variable 26. frequencybodyaccelerationjerk-mean-z           
###Variable 27. frequencybodygyroscope-mean-x                  
###Variable 28. frequencybodygyroscope-mean-y                  
###Variable 29. frequencybodygyroscope-mean-z                  
###Variable 30. frequencybodyaccelerationmagnitude-mean        
###Variable 31. frequencybodybodyaccelerationjerkmagnitude-mean
###Variable 32. frequencybodybodygyroscopemagnitude-mean       
###Variable 33. frequencybodybodygyroscopejerkmagnitude-mean   
###Variable 34. timebodyacceleration-std-x                     
###Variable 35. timebodyacceleration-std-y                     
###Variable 36. timebodyacceleration-std-z                     
###Variable 37. timegravityacceleration-std-x                  
###Variable 38. timegravityacceleration-std-y                  
###Variable 39. timegravityacceleration-std-z                  
###Variable 40. timebodyaccelerationjerk-std-x                 
###Variable 41. timebodyaccelerationjerk-std-y                 
###Variable 42. timebodyaccelerationjerk-std-z                 
###Variable 43. timebodygyroscope-std-x                        
###Variable 44. timebodygyroscope-std-y                        
###Variable 45. timebodygyroscope-std-z                        
###Variable 46. timebodygyroscopejerk-std-x                    
###Variable 47. timebodygyroscopejerk-std-y                    
###Variable 48. timebodygyroscopejerk-std-z                    
###Variable 49. timebodyaccelerationmagnitude-std              
###Variable 50. timegravityaccelerationmagnitude-std           
###Variable 51. timebodyaccelerationjerkmagnitude-std          
###Variable 52. timebodygyroscopemagnitude-std                 
###Variable 53. timebodygyroscopejerkmagnitude-std             
###Variable 54. frequencybodyacceleration-std-x                
###Variable 55. frequencybodyacceleration-std-y                
###Variable 56. frequencybodyacceleration-std-z                
###Variable 57. frequencybodyaccelerationjerk-std-x            
###Variable 58. frequencybodyaccelerationjerk-std-y            
###Variable 59. frequencybodyaccelerationjerk-std-z            
###Variable 60. frequencybodygyroscope-std-x                   
###Variable 61. frequencybodygyroscope-std-y                   
###Variable 62. frequencybodygyroscope-std-z                   
###Variable 63. frequencybodyaccelerationmagnitude-std         
###Variable 64. frequencybodybodyaccelerationjerkmagnitude-std 
###Variable 65. frequencybodybodygyroscopemagnitude-std        
###Variable 66. frequencybodybodygyroscopejerkmagnitude-std    

###Variable 67. subject      
This is the number identifier that identified the 30 subjects involved with the study. This is a integer value between 1-30.
                                  
###Variable 68. activityname
This is an object of class character that decribes the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)    


##Sources
Human Activity Recognition Using Smartphones Dataset Version 1.0 (Dataset and Documentation) - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
