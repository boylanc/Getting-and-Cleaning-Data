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

###Variables

The descriptors for variables 1-66 are are follows:
time: the value represents a time domain signal
frequency: the value represents a frequency domain signal
bodyacceleration/gravityacceleration: the acceleration signal was then separated into body and gravity acceleration signals.
jerk - the body linear acceleration was derived in time to obtain Jerk signals
magnitude - the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
gyroscope - from the gyroscope.
mean - the value is the mean value estimated from these signals.
std - the value is the standard deviation estimated from these signals.
xyz is used to denote 3-axial signals in the X, Y and Z directions.

All of these values are numeric values

Some information on the data size for each variable can be seen below.

###Variable 1. timebodyacceleration-mean-x   
Min.   :0.2216  
1st Qu.:0.2712  
Median :0.2770  
Mean   :0.2743  
3rd Qu.:0.2800  
Max.   :0.3015  

###Variable 2. timebodyacceleration-mean-y           
Min.   :-0.040514  
1st Qu.:-0.020022  
Median :-0.017262  
Mean   :-0.017876  
3rd Qu.:-0.014936  
Max.   :-0.001308  

###Variable 3. timebodyacceleration-mean-z                 
Min.   :-0.15251  
1st Qu.:-0.11207  
Median :-0.10819  
Mean   :-0.10916  
3rd Qu.:-0.10443  
Max.   :-0.07538  

###Variable 4. timegravityacceleration-mean-x  
Min.   :-0.6800  
1st Qu.: 0.8376  
Median : 0.9208  
Mean   : 0.6975  
3rd Qu.: 0.9425  
Max.   : 0.9745  

###Variable 5. timegravityacceleration-mean-y      
Min.   :-0.47989  
1st Qu.:-0.23319  
Median :-0.12782  
Mean   :-0.01621  
3rd Qu.: 0.08773  
Max.   : 0.95659  

###Variable 6. timegravityacceleration-mean-z         
Min.   :-0.49509  
1st Qu.:-0.11726  
Median : 0.02384  
Mean   : 0.07413  
3rd Qu.: 0.14946  
Max.   : 0.95787  

###Variable 7. timebodyaccelerationjerk-mean-x        
Min.   :0.04269  
1st Qu.:0.07396  
Median :0.07640  
Mean   :0.07947  
3rd Qu.:0.08330  
Max.   :0.13019  

###Variable 8. timebodyaccelerationjerk-mean-y             
Min.   :-0.0386872  
1st Qu.: 0.0004664  
Median : 0.0094698  
Mean   : 0.0075652  
3rd Qu.: 0.0134008  
Max.   : 0.0568186  

###Variable 9. timebodyaccelerationjerk-mean-z                
Min.   :-0.067458  
1st Qu.:-0.010601  
Median :-0.003861  
Mean   :-0.004953  
3rd Qu.: 0.001958  
Max.   : 0.038053  

###Variable 10. timebodygyroscope-mean-x      
Min.   :-0.20578  
1st Qu.:-0.04712  
Median :-0.02871  
Mean   :-0.03244  
3rd Qu.:-0.01676  
Max.   : 0.19270  

###Variable 11. timebodygyroscope-mean-y              
Min.   :-0.20421  
1st Qu.:-0.08955  
Median :-0.07318  
Mean   :-0.07426  
3rd Qu.:-0.06113  
Max.   : 0.02747  

###Variable 12. timebodygyroscope-mean-z     
Min.   :-0.07245  
1st Qu.: 0.07475  
Median : 0.08512  
Mean   : 0.08744  
3rd Qu.: 0.10177  
Max.   : 0.17910  

###Variable 13. timebodygyroscopejerk-mean-x         
Min.   :-0.15721  
1st Qu.:-0.10322  
Median :-0.09868  
Mean   :-0.09606  
3rd Qu.:-0.09110  
Max.   :-0.02209  

###Variable 14. timebodygyroscopejerk-mean-y                   
Min.   :-0.07681  
1st Qu.:-0.04552  
Median :-0.04112  
Mean   :-0.04269  
3rd Qu.:-0.03842  
Max.   :-0.01320  


###Variable 15. timebodygyroscopejerk-mean-z          
Min.   :-0.092500  
1st Qu.:-0.061725  
Median :-0.053430  
Mean   :-0.054802  
3rd Qu.:-0.048985  
Max.   :-0.006941  

###Variable 16. timebodyaccelerationmagnitude-mean     
Min.   :-0.9865  
1st Qu.:-0.9573  
Median :-0.4829  
Mean   :-0.4973  
3rd Qu.:-0.0919  
Max.   : 0.6446  

###Variable 17. timegravityaccelerationmagnitude-mean      
Min.   :-0.9865  
1st Qu.:-0.9573  
Median :-0.4829  
Mean   :-0.4973  
3rd Qu.:-0.0919  
Max.   : 0.6446  

###Variable 18. timebodyaccelerationjerkmagnitude-mean         
Min.   :-0.9928  
1st Qu.:-0.9807  
Median :-0.8168  
Mean   :-0.6079  
3rd Qu.:-0.2456  
Max.   : 0.4345  

###Variable 19. timebodygyroscopemagnitude-mean             
Min.   :-0.9807  
1st Qu.:-0.9461  
Median :-0.6551  
Mean   :-0.5652  
3rd Qu.:-0.2159  
Max.   : 0.4180  

###Variable 20. timebodygyroscopejerkmagnitude-mean           
Min.   :-0.99732  
1st Qu.:-0.98515  
Median :-0.86479  
Mean   :-0.73637  
3rd Qu.:-0.51186  
Max.   : 0.08758  

###Variable 21. frequencybodyacceleration-mean-x              
Min.   :-0.9952  
1st Qu.:-0.9787  
Median :-0.7691  
Mean   :-0.5758  
3rd Qu.:-0.2174  
Max.   : 0.5370  

###Variable 22. frequencybodyacceleration-mean-y               
Min.   :-0.98903  
1st Qu.:-0.95361  
Median :-0.59498  
Mean   :-0.48873  
3rd Qu.:-0.06341  
Max.   : 0.52419  

###Variable 23. frequencybodyacceleration-mean-z          
Min.   :-0.9895  
1st Qu.:-0.9619  
Median :-0.7236  
Mean   :-0.6297  
3rd Qu.:-0.3183  
Max.   : 0.2807  

###Variable 24. frequencybodyaccelerationjerk-mean-x     
Min.   :-0.9946  
1st Qu.:-0.9828  
Median :-0.8126  
Mean   :-0.6139  
3rd Qu.:-0.2820  
Max.   : 0.4743  

###Variable 25. frequencybodyaccelerationjerk-mean-y           
Min.   :-0.9894  
1st Qu.:-0.9725  
Median :-0.7817  
Mean   :-0.5882  
3rd Qu.:-0.1963  
Max.   : 0.2767  

###Variable 26. frequencybodyaccelerationjerk-mean-z        
Min.   :-0.9920  
1st Qu.:-0.9796  
Median :-0.8707  
Mean   :-0.7144  
3rd Qu.:-0.4697  
Max.   : 0.1578  

###Variable 27. frequencybodygyroscope-mean-x            
Min.   :-0.9931  
1st Qu.:-0.9697  
Median :-0.7300  
Mean   :-0.6367  
3rd Qu.:-0.3387  
Max.   : 0.4750  

###Variable 28. frequencybodygyroscope-mean-y           
Min.   :-0.9940  
1st Qu.:-0.9700  
Median :-0.8141  
Mean   :-0.6767  
3rd Qu.:-0.4458  
Max.   : 0.3288  

###Variable 29. frequencybodygyroscope-mean-z                
Min.   :-0.9860  
1st Qu.:-0.9624  
Median :-0.7909  
Mean   :-0.6044  
3rd Qu.:-0.2635  
Max.   : 0.4924  

###Variable 30. frequencybodyaccelerationmagnitude-mean        
Min.   :-0.9868  
1st Qu.:-0.9560  
Median :-0.6703  
Mean   :-0.5365  
3rd Qu.:-0.1622  
Max.   : 0.5866  

###Variable 31. frequencybodybodyaccelerationjerkmagnitude-mean
Min.   :-0.9940  
1st Qu.:-0.9770  
Median :-0.7940  
Mean   :-0.5756  
3rd Qu.:-0.1872  
Max.   : 0.5384  

###Variable 32. frequencybodybodygyroscopemagnitude-mean       
Min.   :-0.9865  
1st Qu.:-0.9616  
Median :-0.7657  
Mean   :-0.6671  
3rd Qu.:-0.4087  
Max.   : 0.2040  

###Variable 33. frequencybodybodygyroscopejerkmagnitude-mean   
Min.   :-0.9976  
1st Qu.:-0.9813  
Median :-0.8779  
Mean   :-0.7564  
3rd Qu.:-0.5831  
Max.   : 0.1466  

###Variable 34. timebodyacceleration-std-x         
Min.   :-0.9961  
1st Qu.:-0.9799  
Median :-0.7526  
Mean   :-0.5577  
3rd Qu.:-0.1984  
Max.   : 0.6269  

###Variable 35. timebodyacceleration-std-y     
Min.   :-0.99024  
1st Qu.:-0.94205  
Median :-0.50897  
Mean   :-0.46046  
3rd Qu.:-0.03077  
Max.   : 0.61694  

###Variable 36. timebodyacceleration-std-z                     
Min.   :-0.9877  
1st Qu.:-0.9498  
Median :-0.6518  
Mean   :-0.5756  
3rd Qu.:-0.2306  
Max.   : 0.6090  

###Variable 37. timegravityacceleration-std-x                 
Min.   :-0.9968  
1st Qu.:-0.9825  
Median :-0.9695  
Mean   :-0.9638  
3rd Qu.:-0.9509  
Max.   :-0.8296  

###Variable 38. timegravityacceleration-std-y             
Min.   :-0.9942  
1st Qu.:-0.9711  
Median :-0.9590  
Mean   :-0.9524  
3rd Qu.:-0.9370  
Max.   :-0.6436  

###Variable 39. timegravityacceleration-std-z                  
Min.   :-0.9910  
1st Qu.:-0.9605  
Median :-0.9450  
Mean   :-0.9364  
3rd Qu.:-0.9180  
Max.   :-0.6102  

###Variable 40. timebodyaccelerationjerk-std-x                 
Min.   :-0.9946  
1st Qu.:-0.9832  
Median :-0.8104  
Mean   :-0.5949  
3rd Qu.:-0.2233  
Max.   : 0.5443  

###Variable 41. timebodyaccelerationjerk-std-y        
Min.   :-0.9895  
1st Qu.:-0.9724  
Median :-0.7756  
Mean   :-0.5654  
3rd Qu.:-0.1483  
Max.   : 0.3553  

###Variable 42. timebodyaccelerationjerk-std-z           
Min.   :-0.99329  
1st Qu.:-0.98266  
Median :-0.88366  
Mean   :-0.73596  
3rd Qu.:-0.51212  
Max.   : 0.03102  

###Variable 43. timebodygyroscope-std-x         
Min.   :-0.9943  
1st Qu.:-0.9735  
Median :-0.7890  
Mean   :-0.6916  
3rd Qu.:-0.4414  
Max.   : 0.2677  

###Variable 44. timebodygyroscope-std-y            
Min.   :-0.9942  
1st Qu.:-0.9629  
Median :-0.8017  
Mean   :-0.6533  
3rd Qu.:-0.4196  
Max.   : 0.4765  

###Variable 45. timebodygyroscope-std-z                 
Min.   :-0.9855  
1st Qu.:-0.9609  
Median :-0.8010  
Mean   :-0.6164  
3rd Qu.:-0.3106  
Max.   : 0.5649  

###Variable 46. timebodygyroscopejerk-std-x            
Min.   :-0.9965  
1st Qu.:-0.9800  
Median :-0.8396  
Mean   :-0.7036  
3rd Qu.:-0.4629  
Max.   : 0.1791  

###Variable 47. timebodygyroscopejerk-std-y                    
Min.   :-0.9971  
1st Qu.:-0.9832  
Median :-0.8942  
Mean   :-0.7636  
3rd Qu.:-0.5861  
Max.   : 0.2959  

###Variable 48. timebodygyroscopejerk-std-z       
Min.   :-0.9954  
1st Qu.:-0.9848  
Median :-0.8610  
Mean   :-0.7096  
3rd Qu.:-0.4741  
Max.   : 0.1932  

###Variable 49. timebodyaccelerationmagnitude-std         
Min.   :-0.9865  
1st Qu.:-0.9430  
Median :-0.6074  
Mean   :-0.5439  
3rd Qu.:-0.2090  
Max.   : 0.4284  

###Variable 50. timegravityaccelerationmagnitude-std       
Min.   :-0.9865  
1st Qu.:-0.9430  
Median :-0.6074  
Mean   :-0.5439  
3rd Qu.:-0.2090  
Max.   : 0.4284  

###Variable 51. timebodyaccelerationjerkmagnitude-std        
Min.   :-0.9946  
1st Qu.:-0.9765  
Median :-0.8014  
Mean   :-0.5842  
3rd Qu.:-0.2173  
Max.   : 0.4506  

###Variable 52. timebodygyroscopemagnitude-std     
Min.   :-0.9814  
1st Qu.:-0.9476  
Median :-0.7420  
Mean   :-0.6304  
3rd Qu.:-0.3602  
Max.   : 0.3000  

###Variable 53. timebodygyroscopejerkmagnitude-std             
Min.   :-0.9977  
1st Qu.:-0.9805  
Median :-0.8809  
Mean   :-0.7550  
3rd Qu.:-0.5767  
Max.   : 0.2502  

###Variable 54. frequencybodyacceleration-std-x            
Min.   :-0.9966  
1st Qu.:-0.9820  
Median :-0.7470  
Mean   :-0.5522  
3rd Qu.:-0.1966  
Max.   : 0.6585  

###Variable 55. frequencybodyacceleration-std-y            
Min.   :-0.99068  
1st Qu.:-0.94042  
Median :-0.51338  
Mean   :-0.48148  
3rd Qu.:-0.07913  
Max.   : 0.56019  

###Variable 56. frequencybodyacceleration-std-z              
Min.   :-0.9872  
1st Qu.:-0.9459  
Median :-0.6441  
Mean   :-0.5824  
3rd Qu.:-0.2655  
Max.   : 0.6871  

###Variable 57. frequencybodyaccelerationjerk-std-x      
Min.   :-0.9951  
1st Qu.:-0.9847  
Median :-0.8254  
Mean   :-0.6121  
3rd Qu.:-0.2475  
Max.   : 0.4768  

###Variable 58. frequencybodyaccelerationjerk-std-y      
Min.   :-0.9905  
1st Qu.:-0.9737  
Median :-0.7852  
Mean   :-0.5707  
3rd Qu.:-0.1685  
Max.   : 0.3498  

###Variable 59. frequencybodyaccelerationjerk-std-z       
Min.   :-0.993108  
1st Qu.:-0.983747  
Median :-0.895121  
Mean   :-0.756489  
3rd Qu.:-0.543787  
Max.   :-0.006236  

###Variable 60. frequencybodygyroscope-std-x    
Min.   :-0.9947  
1st Qu.:-0.9750  
Median :-0.8086  
Mean   :-0.7110  
3rd Qu.:-0.4813  
Max.   : 0.1966  

###Variable 61. frequencybodygyroscope-std-y               
Min.   :-0.9944  
1st Qu.:-0.9602  
Median :-0.7964  
Mean   :-0.6454  
3rd Qu.:-0.4154  
Max.   : 0.6462  

###Variable 62. frequencybodygyroscope-std-z         
Min.   :-0.9867  
1st Qu.:-0.9643  
Median :-0.8224  
Mean   :-0.6577  
3rd Qu.:-0.3916  
Max.   : 0.5225  

###Variable 63. frequencybodyaccelerationmagnitude-std         
Min.   :-0.9876  
1st Qu.:-0.9452  
Median :-0.6513  
Mean   :-0.6210  
3rd Qu.:-0.3654  
Max.   : 0.1787  

###Variable 64. frequencybodybodyaccelerationjerkmagnitude-std 
Min.   :-0.9944  
1st Qu.:-0.9752  
Median :-0.8126  
Mean   :-0.5992  
3rd Qu.:-0.2668  
Max.   : 0.3163  

###Variable 65. frequencybodybodygyroscopemagnitude-std       
Min.   :-0.9815  
1st Qu.:-0.9488  
Median :-0.7727  
Mean   :-0.6723  
3rd Qu.:-0.4277  
Max.   : 0.2367  

###Variable 66. frequencybodybodygyroscopejerkmagnitude-std    
Min.   :-0.9976  
1st Qu.:-0.9802  
Median :-0.8941  
Mean   :-0.7715  
3rd Qu.:-0.6081  
Max.   : 0.2878  



###Variable 67. subject      
This is the number identifier that identified the 30 subjects involved with the study. This is a numeric value between 1-30.
                                  
###Variable 68. activityname
This is an object of class character that decribes the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)    


##Sources
Human Activity Recognition Using Smartphones Dataset Version 1.0 (Dataset and Documentation) - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
