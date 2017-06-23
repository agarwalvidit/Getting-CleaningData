#CodeBook for TidyDataset

##This is a description of the output file from script run.analysis.R.

###ID Variables
**subject**: ID the subject who performed the activity for each window sample. Its range is from 1 to 30.  
**activity**: activity performed by subject while wearing accelerometer

###Measurement Variables

*The measurement variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.*   
*These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.*    
*These fields are all taken from the source data, but mean-averaged across all instances of each activity for each subject.*    
*The units are unchanged from the source data*  

Each variable is made up of combination of given  components  

**"Domain"**      : Time domain signal or frequency domain signal (t/f)  
**"parent"**      : Acceleration signal (Body/Gravity)  
**"Intrument"**   : Measuring instrument (Accelerometer Gyroscope)  (Acc/Gyro)  
**"Jerk Signal"** : Jerk Signal  
**"Magnitude"**   : Magnitude of the signals calculated using the Euclidean norm 
**"Variable"**    : Variable (Mean or standard deviation STD)  
**"Axis"**        : 3-axial signals in the X, Y and Z directions (X, Y, or Z)  


* tBodyAcc-mean()-XYZ  - **Note: XYZ represents 3 different variables each with X/Y/Z axis repectively**
* tBodyAcc-std()-XYZ
* tBodyAccJerk-mean()-XYZ 
* tBodyAccJerk-std()-XYZ 
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyro-mean()-XYZ
* tBodyGyro-std()-XYZ
* tBodyGyroJerk-mean()-XYZ
* tBodyGyroJerk-std()-XYZ
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* tGravityAcc-mean()-XYZ
* tGravityAcc-std()-XYZ
* tGravityAccMag-std()     
* fBodyAcc-mean()-XYZ
* fBodyAcc-std()-XYZ
* fBodyAccJerk-mean()-XYZ
* fBodyAccJerk-std()-XYZ
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyGyro-mean()-XYZ
* fBodyGyro-std()-XYZ
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()  
* fBodyBodyGyroJerkMag-mean()  
* fBodyBodyGyroJerkMag-std()  
