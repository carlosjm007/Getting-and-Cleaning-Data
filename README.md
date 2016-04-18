# Getting and Cleaning Data

This project was made to complete the "Getting and Cleaning Data" course; so, here we can find ```run_analysis.R``` script, this script is written in R language.

```run_analysis.R``` download a .zip file from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
If the file is already downloaded, it goes on without download it.

The script uses ```dplyr``` library, so if you don't have installed it, please type ```install.packages("dplyr")``` in your R console.

To run the code, download ```run_analysis.R``` into your Working Directory in RStudio and type ```source("run_analysis.R")``` in the console.

The process will return two .txt files: ```step4.txt``` and ```step5.txt``` which are the result of:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive activity names.
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

We also find a .md file called ```CodeBook.md```, it describes all stored variables into the  ```step4.txt``` and ```step5.txt``` files.
