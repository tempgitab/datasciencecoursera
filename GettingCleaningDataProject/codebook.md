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

 [1] `activityLabel`                  `subjectId`                      `timeBodyAccMeanX`              
 [4] `timeBodyAccMeanY`               `timeBodyAccMeanZ`               `timeBodyAccStdDevX`            
 [7] `timeBodyAccStdDevY`             `timeBodyAccStdDevZ`             `timeGravityAccMeanX`           
[10] `timeGravityAccMeanY`            `timeGravityAccMeanZ`            `timeGravityAccStdDevX`         
[13] `timeGravityAccStdDevY`          `timeGravityAccStdDevZ`          `timeBodyAccJerkMeanX`          
[16] `timeBodyAccJerkMeanY`           `timeBodyAccJerkMeanZ`           `timeBodyAccJerkStdDevX`        
[19] `timeBodyAccJerkStdDevY`         `timeBodyAccJerkStdDevZ`         `timeBodyGyroMeanX`             
[22] `timeBodyGyroMeanY`              `timeBodyGyroMeanZ`              `timeBodyGyroStdDevX`           
[25] `timeBodyGyroStdDevY`            `timeBodyGyroStdDevZ`            `timeBodyGyroJerkMeanX`         
[28] `timeBodyGyroJerkMeanY`          `timeBodyGyroJerkMeanZ`          `timeBodyGyroJerkStdDevX`       
[31] `timeBodyGyroJerkStdDevY`        `timeBodyGyroJerkStdDevZ`        `timeBodyAccMagMean`            
[34] `timeBodyAccMagStdDev`           `timeGravityAccMagMean`          `timeGravityAccMagStdDev`       
[37] `timeBodyAccJerkMagMean`         `timeBodyAccJerkMagStdDev`       `timeBodyGyroMagMean`           
[40] `timeBodyGyroMagStdDev`          `timeBodyGyroJerkMagMean`        `timeBodyGyroJerkMagStdDev`     
[43] `frequencyBodyAccMeanX`          `frequencyBodyAccMeanY`          `frequencyBodyAccMeanZ`         
[46] `frequencyBodyAccStdDevX`        `frequencyBodyAccStdDevY`        `frequencyBodyAccStdDevZ`       
[49] `frequencyBodyAccJerkMeanX`      `frequencyBodyAccJerkMeanY`      `frequencyBodyAccJerkMeanZ`     
[52] `frequencyBodyAccJerkStdDevX`    `frequencyBodyAccJerkStdDevY`    `frequencyBodyAccJerkStdDevZ`   
[55] `frequencyBodyGyroMeanX`         `frequencyBodyGyroMeanY`         `frequencyBodyGyroMeanZ`        
[58] `frequencyBodyGyroStdDevX`       `frequencyBodyGyroStdDevY`       `frequencyBodyGyroStdDevZ`      
[61] `frequencyBodyAccMagMean`        `frequencyBodyAccMagStdDev`      `frequencyBodyAccJerkMagMean`   
[64] `frequencyBodyAccJerkMagStdDev`  `frequencyBodyGyroMagMean`       `frequencyBodyGyroMagStdDev`    
[67] `frequencyBodyGyroJerkMagMean`   `frequencyBodyGyroJerkMagStdDev`
