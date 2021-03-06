This is a description of the tidy dataset created with the 
run_analysis.R script.

For details on how this data was created see README.md in 
this repository.

Below is the description of the variables (columns) of the 
tidy dataset, which is grouped by subjectNr and actovityName. 
All other variables here contain averages of the 
corresponding measurements, so I won't mention this in every 
single case. Also they are unitless, since the data that 
was processed to obtain this tidy set was normalized beforehand.

* subjectNr - subject number
		   1..30 unique identifier for participating persons
* activityName - name of activity performed
			WALKING
			WALKING_UPSTAIRS
			WALKING_DOWNSTAIRS
			SITTING
			STANDING
			LAYING
			
For the rest of the variables I will not give a separate explanation for 
every one of them, because their names speak for themselves. I don't 
see any reason to expand the camelCase names into sentences that contain 
the same information. 
For example *timeBodyAcc_meanX* is the mean times of body acceleration 
along the X axis. The variables are signals collected by the 
accelerometers and gyroscopes attached to the subjects participating 
in the experiment.

The abbreviations present in the names are: 
* std = standard deviation
* Acc = accelerometer (means data collected by the accelerometer)
* Gyro = gyroscope (data collected by the gyroscope)
* Mag = magnitude
* Jerk = Jerk signal; time rate of change of acceleration

For more information about the original data see the descriptions in the 
'UCI HAR Dataset' folder. Below are the list of variable names after 
processing the data as required:
* timeBodyAcc_meanX
* timeBodyAcc_meanY
* timeBodyAcc_meanZ
* timeBodyAcc_stdX
* timeBodyAcc_stdY
* timeBodyAcc_stdZ
* timeGravityAcc_meanX
* timeGravityAcc_meanY
* timeGravityAcc_meanZ
* timeGravityAcc_stdX
* timeGravityAcc_stdY
* timeGravityAcc_stdZ
* timeBodyAccJerk_meanX
* timeBodyAccJerk_meanY
* timeBodyAccJerk_meanZ
* timeBodyAccJerk_stdX
* timeBodyAccJerk_stdY
* timeBodyAccJerk_stdZ
* timeBodyGyro_meanX
* timeBodyGyro_meanY
* timeBodyGyro_meanZ
* timeBodyGyro_stdX
* timeBodyGyro_stdY
* timeBodyGyro_stdZ
* timeBodyGyroJerk_meanX
* timeBodyGyroJerk_meanY
* timeBodyGyroJerk_meanZ
* timeBodyGyroJerk_stdX
* timeBodyGyroJerk_stdY
* timeBodyGyroJerk_stdZ
* timeBodyAccMag_mean
* timeBodyAccMag_std
* timeGravityAccMag_mean
* timeGravityAccMag_std
* timeBodyAccJerkMag_mean
* timeBodyAccJerkMag_std
* timeBodyGyroMag_mean
* timeBodyGyroMag_std
* timeBodyGyroJerkMag_mean
* timeBodyGyroJerkMag_std
* freqBodyAcc_meanX
* freqBodyAcc_meanY
* freqBodyAcc_meanZ
* freqBodyAcc_stdX
* freqBodyAcc_stdY
* freqBodyAcc_stdZ
* freqBodyAcc_meanFreqX
* freqBodyAcc_meanFreqY
* freqBodyAcc_meanFreqZ
* freqBodyAccJerk_meanX
* freqBodyAccJerk_meanY
* freqBodyAccJerk_meanZ
* freqBodyAccJerk_stdX
* freqBodyAccJerk_stdY
* freqBodyAccJerk_stdZ
* freqBodyAccJerk_meanFreqX
* freqBodyAccJerk_meanFreqY
* freqBodyAccJerk_meanFreqZ
* freqBodyGyro_meanX
* freqBodyGyro_meanY
* freqBodyGyro_meanZ
* freqBodyGyro_stdX
* freqBodyGyro_stdY
* freqBodyGyro_stdZ
* freqBodyGyro_meanFreqX
* freqBodyGyro_meanFreqY
* freqBodyGyro_meanFreqZ
* freqBodyAccMag_mean
* freqBodyAccMag_std
* freqBodyAccMag_meanFreq
* freqBodyAccJerkMag_mean
* freqBodyAccJerkMag_std
* freqBodyAccJerkMag_meanFreq
* freqBodyGyroMag_mean
* freqBodyGyroMag_std
* freqBodyGyroMag_meanFreq
* freqBodyGyroJerkMag_mean
* freqBodyGyroJerkMag_std
* freqBodyGyroJerkMag_meanFreq
