## Getting and Cleaning Data Coursera Project

#Raw data
A full description for rawdata is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The dataset for the project is stored at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Note: you don't have to download the dataset. the script will handle this for you.

#Repository content:
In this repository you will find a script (run_analysis.R) that allows to perform and reproduce the cleaning procedure.


#Getting started:
In order to perform the analysis you just have to type 
```r 
source('run_analysis.R') 
```
the script will take care of loading/installing required packages, download the raw dataset, load the auxiliary functions, perform the analysis and save the resulting tidy dataset (tidy.txt).
Files `packageLoader.R` and `functions.R` contain the utility functions called by the script

#Data Cleaning Process
The script will perform the following steps
- p1. Download dataset
- p2. Load dataset
- 1. Merges the training and the test sets to create one data set.
- 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
- 3. Uses descriptive activity names to name the activities in the data set
- 4. Appropriately labels the data set with descriptive variable names. 
- 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

For  more details on each step see code documentation.
