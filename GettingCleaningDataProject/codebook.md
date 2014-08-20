##Course Project Codebook

The original dataset contains 561 features coming from smartphone accelerometer and gyroscope 3-axial raw signals, 
which have been processed using various techniques. A Detailed description can be found in `features_info.txt` in
the original dataset file.

In the tidy dataset only some of these feature have been retained. In particular all that do not have `mean` and `std` in the name have been filtered out. To these, other 2 features have been added: 
`activityLabel`  is a string/character variable that indicate the activity performed at the time sensor data was collected and can assume the following values:
    `WALKING`,`WALKING_UPSTAIRS`,`WALKING_DOWNSTAIRS`,`SITTING`,`STANDING`,`LAYING`

`subjectId` is an integer indicating the participant ID


For a description of the features already presents in the original dataset please refer directly to the original features_info.txt
Only names have been changed with the following rules
t -> time
f -> frequency
mean() -> mean
std() -> StdDev
"-" have been removed
and a camelCase convention have been applied.


The complete list of all 68 features is the following: 

`activityLabel`
`subjectId`
`timeBodyAccMeanX`
`timeBodyAccMeanY`
`timeBodyAccMeanZ`
`timeBodyAccStdDevX`
`timeBodyAccStdDevY`
`timeBodyAccStdDevZ`
`timeGravityAccMeanX`
`timeGravityAccMeanY`
`timeGravityAccMeanZ`
`timeGravityAccStdDevX`
`timeGravityAccStdDevY`
`timeGravityAccStdDevZ`
`timeBodyAccJerkMeanX`
`timeBodyAccJerkMeanY`
`timeBodyAccJerkMeanZ`
`timeBodyAccJerkStdDevX`
`timeBodyAccJerkStdDevY`
`timeBodyAccJerkStdDevZ`
`timeBodyGyroMeanX`
`timeBodyGyroMeanY`
`timeBodyGyroMeanZ`
`timeBodyGyroStdDevX`
`timeBodyGyroStdDevY`
`timeBodyGyroStdDevZ`
`timeBodyGyroJerkMeanX`
`timeBodyGyroJerkMeanY`
`timeBodyGyroJerkMeanZ`
`timeBodyGyroJerkStdDevX`
`timeBodyGyroJerkStdDevY`
`timeBodyGyroJerkStdDevZ`
`timeBodyAccMagMean`
`timeBodyAccMagStdDev`
`timeGravityAccMagMean`
`timeGravityAccMagStdDev`
`timeBodyAccJerkMagMean`
`timeBodyAccJerkMagStdDev`
`timeBodyGyroMagMean`
`timeBodyGyroMagStdDev`
`timeBodyGyroJerkMagMean`
`timeBodyGyroJerkMagStdDev`
`frequencyBodyAccMeanX`
`frequencyBodyAccMeanY`
`frequencyBodyAccMeanZ`
`frequencyBodyAccStdDevX`
`frequencyBodyAccStdDevY`
`frequencyBodyAccStdDevZ`
`frequencyBodyAccJerkMeanX`
`frequencyBodyAccJerkMeanY`
`frequencyBodyAccJerkMeanZ`
`frequencyBodyAccJerkStdDevX`
`frequencyBodyAccJerkStdDevY`
`frequencyBodyAccJerkStdDevZ`
`frequencyBodyGyroMeanX`
`frequencyBodyGyroMeanY`
`frequencyBodyGyroMeanZ`
`frequencyBodyGyroStdDevX`
`frequencyBodyGyroStdDevY`
`frequencyBodyGyroStdDevZ`
`frequencyBodyAccMagMean`
`frequencyBodyAccMagStdDev`
`frequencyBodyAccJerkMagMean`
`frequencyBodyAccJerkMagStdDev`
`frequencyBodyGyroMagMean`
`frequencyBodyGyroMagStdDev`
`frequencyBodyGyroJerkMagMean`
`frequencyBodyGyroJerkMagStdDev`
