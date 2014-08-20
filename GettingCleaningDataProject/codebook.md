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

&nbsp;[1]&nbsp;`activityLabel`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`subjectId`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccMeanX`
&nbsp;[4]&nbsp;`timeBodyAccMeanY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccMeanZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccStdDevX`
&nbsp;[7]&nbsp;`timeBodyAccStdDevY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccStdDevZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeGravityAccMeanX`
[10]&nbsp;`timeGravityAccMeanY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeGravityAccMeanZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeGravityAccStdDevX`
[13]&nbsp;`timeGravityAccStdDevY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeGravityAccStdDevZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccJerkMeanX`
[16]&nbsp;`timeBodyAccJerkMeanY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccJerkMeanZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccJerkStdDevX`
[19]&nbsp;`timeBodyAccJerkStdDevY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccJerkStdDevZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroMeanX`
[22]&nbsp;`timeBodyGyroMeanY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroMeanZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroStdDevX`
[25]&nbsp;`timeBodyGyroStdDevY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroStdDevZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroJerkMeanX`
[28]&nbsp;`timeBodyGyroJerkMeanY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroJerkMeanZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroJerkStdDevX`
[31]&nbsp;`timeBodyGyroJerkStdDevY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroJerkStdDevZ`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccMagMean`
[34]&nbsp;`timeBodyAccMagStdDev`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeGravityAccMagMean`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeGravityAccMagStdDev`
[37]&nbsp;`timeBodyAccJerkMagMean`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyAccJerkMagStdDev`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroMagMean`
[40]&nbsp;`timeBodyGyroMagStdDev`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroJerkMagMean`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`timeBodyGyroJerkMagStdDev`
[43]&nbsp;`frequencyBodyAccMeanX`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccMeanY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccMeanZ`
[46]&nbsp;`frequencyBodyAccStdDevX`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccStdDevY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccStdDevZ`
[49]&nbsp;`frequencyBodyAccJerkMeanX`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccJerkMeanY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccJerkMeanZ`
[52]&nbsp;`frequencyBodyAccJerkStdDevX`&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccJerkStdDevY`&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccJerkStdDevZ`
[55]&nbsp;`frequencyBodyGyroMeanX`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyGyroMeanY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyGyroMeanZ`
[58]&nbsp;`frequencyBodyGyroStdDevX`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyGyroStdDevY`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyGyroStdDevZ`
[61]&nbsp;`frequencyBodyAccMagMean`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccMagStdDev`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyAccJerkMagMean`
[64]&nbsp;`frequencyBodyAccJerkMagStdDev`&nbsp;&nbsp;`frequencyBodyGyroMagMean`&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`frequencyBodyGyroMagStdDev`
[67]&nbsp;`frequencyBodyGyroJerkMagMean`&nbsp;&nbsp;&nbsp;`frequencyBodyGyroJerkMagStdDev`