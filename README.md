# Getting-and-Cleaning-Data-Course-Project

This repository is for my "Getting and Cleaning Data" course project at Coursera.

## Project Summary 

The project data was collected from the accelerometers from the Samsung Galaxy S smartphone. 

The requirement is to write a R script called run_analysis.R which performs the following to prepare tidy data:
 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Repository Information

This repository contains the following files:

* README.md - explains the analysis files included in this repository
* CodeBook.md - explains all the variables and summaries calculated, along with units, and any other relevant information
* run_analysis.R - the R scripts used to download, extract, transform, and create the tidy data set
* tidy_data.txt - the tidy data set with the average of each variable for each activity and each subject

## Package Installation

The dplyr package is used for grouping and calculating averages

