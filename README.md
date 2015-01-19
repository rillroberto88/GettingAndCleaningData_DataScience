# GettingAndCleaningData_DataScience
This repository is for the course project of the online course 
Getting and Cleaning Data on Coursera.

For detailed information about the data used for cleaning and 
processing check the course webpage on Coursera.

In the following it is described how the the run_analysis.R script 
works.

The file contains a function named run_analysis, which returns the 
independent tidy data set with the average of each extracted variable 
for each activity and each subject.

**This data meets the tidy dataset principles, because it 
contains only one variable in every column and each observation 
is contained in a separate row and there is a single table.
Also the variable names are transformed into a human readable format.**

The script also contains comments, which makes the code more understandable.

It is assumed that the 'UCI HAR Dataset' folder containing the 
downloaded data is in the working directory of R.

First it reads the feature names from the 'features.txt' file. 
It filters this by extracting only the measurements on the mean and 
standard deviation for each measurement, by searching for the 
'-mean' and '-std' substrings in the variable names.
Then it does further transformations on the variable names:
* replace the beginning 't' letters with the word 'time'
* replace the beginning 'f' letters with the word 'freq'
* remove the parenthesis
* replace '-' (dash) by '_' (underscore)
* replace '_X', '_Y' and '_Z' by simply 'X', 'Y', 'Z'
* replace 'BodyBody' by 'Body'.

Then it reads further required data:
* activity labels and names: 'activity_labels.txt'
* training subject numbers: 'train/subject_train.txt'
* training data measurements: 'train/X_train.txt'
* training labels: 'train/y_train.txt'
* same for test data too.

Now the training and test data are concatenated with the 'rbind' function.

The activity labels are replaced with their names in the new 
concatenated labels list.

From the measurements dataframe (allData) the previously determined 
columns are selected (mean and std variables). 

The complete dataset is computed by adding the subject numbers and activity 
names to the measurements dataframe and the column names are also added.

Finally the 'dplyr' package is used to group the data by the 
subject numbers and activity names and to calculate the average 
of all the variables. The resulting grouped dataframe is returned 
as the tidy dataset required.

The result was saved with write.table() using row.name=FALSE 
to the 'tidyMean.txt' file and uploaded to the repository too.
