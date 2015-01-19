run_analysis = function() {
# get feature names and their indexes
  features <- read.table("UCI HAR Dataset/features.txt")
  indexes <- grep("-mean|-std", features[,2])
  varNames <- features[indexes,2]
  varNames <- gsub("^t", "time", varNames)
  varNames <- gsub("^f", "freq", varNames)
  varNames <- gsub("\\(\\)", "", varNames)
  varNames <- gsub("-", "_", varNames)
  varNames <- gsub("_X", "X", varNames)
  varNames <- gsub("_Y", "Y", varNames)
  varNames <- gsub("_Z", "Z", varNames)
  varNames <- gsub("BodyBody", "Body", varNames)
  
 # get activity labels
   activities <- read.table("UCI HAR Dataset/activity_labels.txt")
   
 # read training data
   trainSubj <- read.table("UCI HAR Dataset/train/subject_train.txt")
   trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
   trainLabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
 # read test data
   testSubj <- read.table("UCI HAR Dataset/test/subject_test.txt")
   testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
   testLabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
 # concat training and test data
   allSubj   <- rbind(trainSubj, testSubj)
   allData   <- rbind(trainData, testData)
   allLabels <- rbind(trainLabels, testLabels)
 # replace activity codes with their names
   allLabels[,1] <- as.character(allLabels[,1])
   for (i in 1:dim(activities)[1]) {
     allLabels[,1] <- gsub(as.character(i), activities[i,2], allLabels[,1])
   }
 # select subset of data columns (mean and std)
   allData <- allData[,indexes] 
 # append subject number and activity name to data
   varNames <- append("subjectNr", varNames)
   varNames <- append(varNames, "activityName")
 # concat columns of dataset
   tidyAll <- cbind(allSubj, allData, allLabels)
 # set names of data frame
   names(tidyAll) <- varNames
# group data by subject and activity and calculate means of variables
  library(dplyr)
  tidyMean <- tidyAll %>% group_by(subjectNr, activityName) %>% 
			summarise_each(funs(mean))

  return(tidyMean)
}