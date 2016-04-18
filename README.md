# Getting and Cleaning Data

This project was made to complete the "Getting and Cleaning Data" course; so, here we can find ```run_analysis.R``` script, this script is written in R language and it returns two .txt files: ```step4.txt``` and ```step5.txt```; ```run_analysis.R``` download a .zip file from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

If the file is already downloaded, it goes on without download it.

The script uses ```dplyr``` library, so if you don't have installed it, please type ```install.packages("dplyr")``` in your R console.

To run the code type ```source("run_analysis.R")```.

We also find a .md file called ```CodeBook.md```, it describes all stored variables into the  ```step4.txt``` and ```step5.txt``` files.
