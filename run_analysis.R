# Step 0: Read the training and test data files

# Read the Training Data
trainData <- read.table("./UCI_HAR_Dataset/train/X_train.txt")
trainLabel <- read.table("./UCI_HAR_Dataset/train/y_train.txt")
trainSubject <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")

# Read the Test Data
testData <- read.table("./UCI_HAR_Dataset/test/X_test.txt")
testLabel <- read.table("./UCI_HAR_Dataset/test/y_test.txt")
testSubject <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")

# Read features list
features <- read.table("./UCI_HAR_Dataset/features.txt")

# Read activity list
activityList <- read.table("./UCI_HAR_Dataset/activity_labels.txt")


# Step 1: Merge taining and data sets into one data set

# Combine all training data
allTrain <- cbind(trainData, trainSubject, trainLabel)

# Combine all test data
allTest <- cbind(testData, testSubject, testLabel)

# Join merged data
combinedData <- rbind(trainData, testData)
combinedLabel <- rbind(trainLabel, testLabel)
combinedSubject <- rbind(trainSubject, testSubject)


# Step 2: Only extract measurements on the mean and standard
# deviation for each measurement.

combinedData <- combinedData[, grep("std|mean", features[, 2])]


# Step 3: Use descriptive activity names to name the activities in the data set

activityNames <- factor(combinedLabel[,1], levels = activityList[, 1], labels = activityList[, 2])


# Step 4: Appropriately label the data set with descriptive variable names

colnames(combinedData) <- grep("std|mean", features[, 2], value=T)
names(combinedData) <- gsub("^f", "frequency", names(combinedData))
names(combinedData) <- gsub("^t", "time", names(combinedData))
names(combinedData) <- gsub("\\(\\)", "", names(combinedData))
names(combinedData) <- gsub("-", "", names(combinedData))
names(combinedData) <- gsub("mean", "Mean", names(combinedData))
names(combinedData) <- gsub("std", "StDev", names(combinedData))

tidyData <- cbind(subject = combinedSubject[,1], activityNames, combinedData)

# Write out the tidyData set to file
# write.table(tidyData, "tidy_raw_data.txt", row.names = FALSE)

# Step 5: From the data set in step 4, create a second, independent tidy 
# data set with the average of each variable for each activity and each subject

library(dplyr)
tidyAverage <- tidyData %>% group_by(activityNames, subject) %>% summarize_all(funs(mean))

# Write the tidyAverage data set to a file
write.table(tidyAverage, "tidy_average_data.txt", row.names = FALSE)

