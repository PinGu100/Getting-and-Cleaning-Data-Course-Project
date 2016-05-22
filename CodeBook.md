#CODEBOOK
##Summary of the codes:
1. download, upzip and read files from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. combine X_train with subject_train, combine X_test and subject_test.
3. give names listed in features to virables in X_train and X_test.
4. Uses descriptive activity names to name the activities in the train and test datasets.
5. Merges the subject and activity labelled train and test datasets to one data set.
6. Extracts only the measurements on the mean and standard deviation for each measurement.
7. labels the data set with descriptive variable names.
8. creates a second, independent tidy data set with the average of each variable for each activity and each subject, and output it.

##Varibles:
Quoting from features_info.txt in the original dataset:
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
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean"


###Varibles in the output tidy data set:
[1] "subject"                                       
 [2] "activity"                                      
 [3] "newV1"                                         
 [4] "timeBodyAccelerometer-mean()-X"                
 [5] "timeBodyAccelerometer-mean()-Y"                
 [6] "timeBodyAccelerometer-mean()-Z"                
 [7] "timeBodyAccelerometer-std()-X"                 
 [8] "timeBodyAccelerometer-std()-Y"                 
 [9] "timeBodyAccelerometer-std()-Z"                 
[10] "timeGravityAccelerometer-mean()-X"             
[11] "timeGravityAccelerometer-mean()-Y"             
[12] "timeGravityAccelerometer-mean()-Z"             
[13] "timeGravityAccelerometer-std()-X"              
[14] "timeGravityAccelerometer-std()-Y"              
[15] "timeGravityAccelerometer-std()-Z"              
[16] "timeBodyAccelerometerJerk-mean()-X"            
[17] "timeBodyAccelerometerJerk-mean()-Y"            
[18] "timeBodyAccelerometerJerk-mean()-Z"            
[19] "timeBodyAccelerometerJerk-std()-X"             
[20] "timeBodyAccelerometerJerk-std()-Y"             
[21] "timeBodyAccelerometerJerk-std()-Z"             
[22] "timeBodyGyroscope-mean()-X"                    
[23] "timeBodyGyroscope-mean()-Y"                    
[24] "timeBodyGyroscope-mean()-Z"                    
[25] "timeBodyGyroscope-std()-X"                     
[26] "timeBodyGyroscope-std()-Y"                     
[27] "timeBodyGyroscope-std()-Z"                     
[28] "timeBodyGyroscopeJerk-mean()-X"                
[29] "timeBodyGyroscopeJerk-mean()-Y"                
[30] "timeBodyGyroscopeJerk-mean()-Z"                
[31] "timeBodyGyroscopeJerk-std()-X"                 
[32] "timeBodyGyroscopeJerk-std()-Y"                 
[33] "timeBodyGyroscopeJerk-std()-Z"                 
[34] "timeBodyAccelerometerMagnitude-mean()"         
[35] "timeBodyAccelerometerMagnitude-std()"          
[36] "timeGravityAccelerometerMagnitude-mean()"      
[37] "timeGravityAccelerometerMagnitude-std()"       
[38] "timeBodyAccelerometerJerkMagnitude-mean()"     
[39] "timeBodyAccelerometerJerkMagnitude-std()"      
[40] "timeBodyGyroscopeMagnitude-mean()"             
[41] "timeBodyGyroscopeMagnitude-std()"              
[42] "timeBodyGyroscopeJerkMagnitude-mean()"         
[43] "timeBodyGyroscopeJerkMagnitude-std()"          
[44] "frequencyBodyAccelerometer-mean()-X"           
[45] "frequencyBodyAccelerometer-mean()-Y"           
[46] "frequencyBodyAccelerometer-mean()-Z"           
[47] "frequencyBodyAccelerometer-std()-X"            
[48] "frequencyBodyAccelerometer-std()-Y"            
[49] "frequencyBodyAccelerometer-std()-Z"            
[50] "frequencyBodyAccelerometerJerk-mean()-X"       
[51] "frequencyBodyAccelerometerJerk-mean()-Y"       
[52] "frequencyBodyAccelerometerJerk-mean()-Z"       
[53] "frequencyBodyAccelerometerJerk-std()-X"        
[54] "frequencyBodyAccelerometerJerk-std()-Y"        
[55] "frequencyBodyAccelerometerJerk-std()-Z"        
[56] "frequencyBodyGyroscope-mean()-X"               
[57] "frequencyBodyGyroscope-mean()-Y"               
[58] "frequencyBodyGyroscope-mean()-Z"               
[59] "frequencyBodyGyroscope-std()-X"                
[60] "frequencyBodyGyroscope-std()-Y"                
[61] "frequencyBodyGyroscope-std()-Z"                
[62] "frequencyBodyAccelerometerMagnitude-mean()"    
[63] "frequencyBodyAccelerometerMagnitude-std()"     
[64] "frequencyBodyAccelerometerJerkMagnitude-mean()"
[65] "frequencyBodyAccelerometerJerkMagnitude-std()" 
[66] "frequencyBodyGyroscopeMagnitude-mean()"        
[67] "frequencyBodyGyroscopeMagnitude-std()"         
[68] "frequencyBodyGyroscopeJerkMagnitude-mean()"    
[69] "frequencyBodyGyroscopeJerkMagnitude-std()"  
