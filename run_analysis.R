library(dplyr)

# Download the data
if(!file.exists("./data")){
    dir.create("./data")
}
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="./data/Dataset.zip")

# Unzip file
unzip("./data/Dataset.zip", exdir = "./data")

# Set new working dir to the UCI HAR Dataset folder
current_wd <- getwd()
setwd(paste(current_wd, "data", "UCI HAR Dataset", sep = "/"))

# Read information
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

# Read Train data
subject_train <- read.table("./train/subject_train.txt")
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/Y_train.txt")

# read test data
subject_test <- read.table("./test/subject_test.txt")
X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/Y_test.txt")

# 1.Merges the training and the test sets to create one data set.
subject_total <- rbind(subject_train, subject_test)
X_total <- rbind(X_train, X_test)
Y_total <- rbind(Y_train, Y_test)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# Identify mean and standard deviation features
features_mean_sd <- features[grepl("mean\\(\\)|std\\(\\)", features[ ,2], ignore.case = TRUE), ]
# Retrieve mean and standard deviation feature data
X_total_mean_sd <- X_total[,features_mean_sd[,1]]

# 3.Uses descriptive activity names to name the activities in the data set
Y_total$V1 <- factor(Y_total$V1, levels = activity_labels$V1, labels = as.character(activity_labels$V2))

# 4.Appropriately labels the data set with descriptive variable names. 
# Change V1 for subject_total
colnames(subject_total) <- c("subject")
# Change V1 for Y_total
colnames(Y_total) <- c("activity")
# Give descriptive variable names
colnames(X_total_mean_sd) <- gsub("[\\(\\)-]", "", features_mean_sd$V2)
colnames(X_total_mean_sd) <- gsub("^t", "time", colnames(X_total_mean_sd))
colnames(X_total_mean_sd) <- gsub("^f", "frequency", colnames(X_total_mean_sd))
colnames(X_total_mean_sd) <- gsub("Acc", "Accelerometer", colnames(X_total_mean_sd))
colnames(X_total_mean_sd) <- gsub("Gyro", "Gyroscope", colnames(X_total_mean_sd))
colnames(X_total_mean_sd) <- gsub("Mag", "Magnitude", colnames(X_total_mean_sd))
colnames(X_total_mean_sd) <- gsub("mean", "Mean", colnames(X_total_mean_sd))
colnames(X_total_mean_sd) <- gsub("std", "Std", colnames(X_total_mean_sd))
# Merge all together
all_data <- cbind(subject_total, Y_total, X_total_mean_sd)

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Get averarge of each variable by each subject and then each activity.
tidy_data <- all_data %>% group_by(subject, activity) %>% summarize_all(funs(mean))
# Write out the file
write.table(tidy_data, file = "tidydata.txt", row.names = FALSE, col.names = TRUE)

