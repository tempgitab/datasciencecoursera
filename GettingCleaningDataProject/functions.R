## functions used in the analysis


#downloads and extracts row data
download.rawData <- function(){
    url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    file <- 'rawdata.zip'
    print("downloading and extracting raw data")
    download(url,file)
    unzip(file)
    print("Dataset downloaded")
}

# load the dataset of the specified label  
load.rawData <- function(datasetType, FeatureRegexFilter){
    featureNames = read.table('features.txt', col.names = c('Id','Name'))
    dataset.filename <- paste(datasetType, '/X_', datasetType, '.txt', sep = '')
    activityIds.filename <- paste(datasetType, '/y_', datasetType, '.txt', sep = '')
    subjectIds.filename <- paste(datasetType, '/subject_', datasetType, '.txt', sep= '')
    
    # Load data files
    dataset <- read.table(dataset.filename)
    #since these files have only one column scan() is much faster
    activityIds <- scan(activityIds.filename,quiet=TRUE)
    subjectIds  <- scan(subjectIds.filename,quiet=TRUE)
    
    #set name of features
    names(dataset) <- featureNames$Name
    #append labels and subjectIds as columns
    dataset$subjectId  = factor(subjectIds)
    dataset$activityId = activityIds
    
    return(dataset)
}

#this function filters a raw dataset by extracting only the feature matched with FeatureRegex  
filter.rawData <- function(dataset, FeatureRegex){
    #if no FeatureRegex is passed simply return the original dataset 
    if(missing(FeatureRegex) & !missing(dataset))
        return(dataset)
    
    #get indexes of colums that matches regex
    filteredColumns = grepl( FeatureRegex, names(dataset) )
    
    return(dataset[, filteredColumns])
}

#this function clean variable names 
cleanVariableNames <- function (dataset){
    names(dataset) <- gsub("^t", "Time", names(dataset))
    names(dataset) <- gsub("^f", "Frequency", names(dataset))
    names(dataset) <- gsub("-mean\\(\\)", "Mean", names(dataset))
    names(dataset) <- gsub("-std\\(\\)", "StdDev", names(dataset))
    names(dataset) <- gsub("-", "", names(dataset))
    names(dataset) <- gsub("BodyBody", "Body", names(dataset))
    return(names(dataset))
}
