
## STEP 1: Downloading the data set 
    
  #Clear workspace and setting up intial variables: 
    rm(list = ls())
    folder <- "UCI HAR Dataset"
    zipFile <- "Data_PeerAssign3.zip"
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

  #Setting up folder & files
    if(!file.exists(folder)) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile=zipFile, method="curl")
    unzip(zipFile)
    file.remove(zipFile)
    }

## STEP 2 : Extracting required Data and bit of cleaning    
    
  # Loading activity lables followed by setting class as "character"
    activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
    activityLabels[,2] <- as.character(activityLabels[,2])

  # Loading features lables followed by setting class as "character"
    features <- read.table("UCI HAR Dataset/features.txt")
    features[,2] <- as.character(features[,2])

  # Getting required features and cleaning their names, stored in featureNames  
    featuresRequired <- grep(".*mean.*|.*std.*", features[,2])
    featuresNames <- features[featuresRequired,2]
    featuresNames = gsub('-mean', 'mean', featuresNames)
    featuresNames = gsub('-std', 'std', featuresNames)
    featuresNames <- gsub('[-()]', '', featuresNames)

  #Load the training datasets, training lables and subject in training set
    training <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresRequired]
    trainingActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
    trainingSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
    training <- cbind(trainingSubjects, trainingActivities, training) # Merge Training dataset, Activities and Subjects

  # Load the testing datasets, testing lables and subject in test set
    test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresRequired]
    testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
    testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
    test <- cbind(testSubjects, testActivities, test) #Merge Testing dataset, Activities and Subjects

## Step 3 : Forming Master DataBase followed by correct labelling of varibale names 
    
  # Merging the training and the testing data sets to create one data set
    FullData <- rbind(training, test)

  #labelling data set with descriptive variable names
    colnames(FullData) <- c("subject", "activity", featuresNames)
    FullData

  #Converting activities & subjects into factors from activityLabels
    FullData$activity <- factor(FullData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
    FullData$subject <- as.factor(FullData$subject)

  #Creating one full data set file with only means & standard deviations
    write.table(FullData, file = "FullDataSet.txt", row.names = FALSE, quote = FALSE)


## Step 4: Reshaping exisitinf fulldata set  to tidydata set as required by assignment 
  
    library(reshape2)
    
  #Casting Data set from wide to a long data format
    FullData.long <- melt(FullData, id = c("subject", "activity"))

  # Recasting dataset for summarizing subject and activities i.e giving average of each varibles  for each subject and activity
    FullData.tidy <- dcast(FullData.long, subject + activity ~ variable, mean)

  #Creating one full data set file with only means & standard deviations
    write.table(FullData.tidy, file = "TidyDataSet.txt", row.names = FALSE, quote = FALSE)
    