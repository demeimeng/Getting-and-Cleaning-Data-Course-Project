# Code Book

This codebook explains all the variables and summaries calculated, along with units, and any other relevant information.

## Source Data

The Human Activity Recognition Using Smartphones Data Set from UIC Machine Learning Repository is used for this project.

A full description about the dataset can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The project data can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Original Data Files

The UCI HAR Dataset folder contains two folders of data set, train and test, along with files to explain the data.

## Transformation

1. Merged the training and test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement.
3. Used descriptive activity names to name the activities in the data set.
4. Appropriately labeled the data set with descriptive variable names.
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

## Tidy Data

Tidy data contains 180 rows and 68 columns. The first column is the subject who performed the activity for each window sample. The second column is activity performed. The remains are the averaged variables , either mean or standard deviation of the measurements, for each subject and each activity.

## Identifiers

* The subject column is numbered sequentially from 1 to 30. 
* Activity column has 6 levels of factor, i.e., WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.

## Measurements

* timeBodyAccelerometerMeanX
* timeBodyAccelerometerMeanY
* timeBodyAccelerometerMeanZ
* timeBodyAccelerometerStdX
* timeBodyAccelerometerStdY
* timeBodyAccelerometerStdZ
* timeGravityAccelerometerMeanX
* timeGravityAccelerometerMeanY
* timeGravityAccelerometerMeanZ
* timeGravityAccelerometerStdX
* timeGravityAccelerometerStdY
* timeGravityAccelerometerStdZ
* timeBodyAccelerometerJerkMeanX
* timeBodyAccelerometerJerkMeanY
* timeBodyAccelerometerJerkMeanZ
* timeBodyAccelerometerJerkStdX
* timeBodyAccelerometerJerkStdY
* timeBodyAccelerometerJerkStdZ
* timeBodyGyroscopeMeanX
* timeBodyGyroscopeMeanY
* timeBodyGyroscopeMeanZ
* timeBodyGyroscopeStdX
* timeBodyGyroscopeStdY
* timeBodyGyroscopeStdZ
* timeBodyGyroscopeJerkMeanX
* timeBodyGyroscopeJerkMeanY
* timeBodyGyroscopeJerkMeanZ
* timeBodyGyroscopeJerkStdX
* timeBodyGyroscopeJerkStdY
* timeBodyGyroscopeJerkStdZ
* timeBodyAccelerometerMagnitudeMean
* timeBodyAccelerometerMagnitudeStd
* timeGravityAccelerometerMagnitudeMean
* timeGravityAccelerometerMagnitudeStd
* timeBodyAccelerometerJerkMagnitudeMean
* timeBodyAccelerometerJerkMagnitudeStd
* timeBodyGyroscopeMagnitudeMean
* timeBodyGyroscopeMagnitudeStd
* timeBodyGyroscopeJerkMagnitudeMean
* timeBodyGyroscopeJerkMagnitudeStd
* frequencyBodyAccelerometerMeanX
* frequencyBodyAccelerometerMeanY
* frequencyBodyAccelerometerMeanZ
* frequencyBodyAccelerometerStdX
* frequencyBodyAccelerometerStdY
* frequencyBodyAccelerometerStdZ
* frequencyBodyAccelerometerJerkMeanX
* frequencyBodyAccelerometerJerkMeanY
* frequencyBodyAccelerometerJerkMeanZ
* frequencyBodyAccelerometerJerkStdX
* frequencyBodyAccelerometerJerkStdY
* frequencyBodyAccelerometerJerkStdZ
* frequencyBodyGyroscopeMeanX
* frequencyBodyGyroscopeMeanY
* frequencyBodyGyroscopeMeanZ
* frequencyBodyGyroscopeStdX
* frequencyBodyGyroscopeStdY
* frequencyBodyGyroscopeStdZ
* frequencyBodyAccelerometerMagnitudeMean
* frequencyBodyAccelerometerMagnitudeStd
* frequencyBodyBodyAccelerometerJerkMagnitudeMean
* frequencyBodyBodyAccelerometerJerkMagnitudeStd
* frequencyBodyBodyGyroscopeMagnitudeMean
* frequencyBodyBodyGyroscopeMagnitudeStd
* frequencyBodyBodyGyroscopeJerkMagnitudeMean
* frequencyBodyBodyGyroscopeJerkMagnitudeStd

## Variable Units

Subject is integer. Activity is factor. The remained variables are numeric.