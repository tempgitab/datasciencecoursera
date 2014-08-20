## this script runs the following steps to analyze and clean the dataset:
# p1. Download dataset
# p2. Load dataset
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

source("packageLoader.R")
source("functions.R")
checkDependencies(c("downloader","data.table"))

## ==================================
##        preparatory steps:
## ==================================

# p1. download data
download.rawData()
# p2. load raw datasets
setwd('UCI HAR Dataset/')
trainingSet <- load.rawData ("train")
testSet     <- load.rawData ("test")

## ===================================
## ===================================

# 1. Merge dataset
workingDataset = rbind(trainingSet, testSet)
# 2. Feature extraction
FeatureRegexFilter <- '(-mean\\(\\)|-std\\(\\))|subjectId|activityId'
workingDataset <- filter.rawData(workingDataset,FeatureRegexFilter)
#free space
rm(trainingSet,testSet)
# 3. Set activity names
activityLabels = read.table('activity_labels.txt', col.names = c('Id', 'Name'))
workingDataset$activityLabel = factor(workingDataset$activityId, levels=activityLabels$Id,
                                       labels=activityLabels$Name)
#remove activity id column
workingDataset$activityId <- NULL
# 4. Clean Label of Features

names(workingDataset) <- cleanVariableNames(workingDataset)

# 5. Create tidy dataset
#save the workingDataset
setwd('..')
write.table(workingDataset,file = 'workingDS.txt',row.names = FALSE, quote = FALSE)
workingDataset<-data.table(workingDataset)
tidyDataset <- workingDataset[, lapply(.SD, mean), by=list(activityLabel,subjectId)]
write.table(tidyDataset,file = 'tidy.txt',row.names = FALSE, quote = FALSE)
