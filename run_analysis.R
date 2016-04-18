library(data.table)
library(dplyr)

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- tbl_df(read.table("UCI HAR Dataset/features.txt"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

# 	2
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Through "filter" function we can select all variables with "mean" or "std" in its value
colu <- filter(features, grepl("mean|std", V2))

# 	1
# Merges the training and the test sets to create one data set.
x <- rbind(x_train, x_test)[,colu$V1]	# Just the information we need.
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

#	3
# Uses descriptive activity names to name the activities in the data set
colnames(x) <- colu$V2
colnames(y) <- c("activity")
colnames(subject) <- c("subject")
y[, 1] <- activity_labels[y[, 1], 2]	# Change numbers for its name equivalent

#	4
# Appropriately labels the data set with descriptive variable names.
union.4 <- cbind(subject, y, x)
write.table(union.4, "step4.txt", row.name=FALSE)

# 	5
# From the data set in step 4, creates a second, independent tidy data set with the average
# of each variable for each activity and each subject.
# The table will be grouped into "subjects" and "activity" and then with "summarise_each" function
# we will get the mean for each variable.
union.5 <- tbl_df(union.4) %>% group_by(subject, activity) %>% summarise_each(funs(mean))
write.table(union.5, "step5.txt", row.name=FALSE)