# Getting and Cleaning Data Course Project

This repository contains data for the course project for the Coursera Getting and Cleaning Data course.

This repository contains the following files:

- `README.md`, this file.
- `tidy_data.txt`, which contains the data set.
- `CodeBook.md`, which describes the data.
- `run_analysis.R`, the R script used to create the tidy_data.txt

## Data
The data used can be downloaded from [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Sma
rtphones)

## Files used

- ***UCI HAR Dataset/features.txt***: List of all features.
- ***UCI HAR Dataset/activity_labels.txt***: Links the class labels with their activity name.
- ***train/X_train.txt***: Training set.
- ***train/y_train.txt***: Training labels.
- ***test/X_test.txt***: Test set.
- ***test/y_test.txt***: Test labels.
- ***train/subject_train.txt**: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- ***test/subject_test.txt***: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


## Summary

The following step were performed in `run_analysis.R`

1. Step 0 => loading data and completing X_test and X_train
  + reading features and activity data
  + reading test data
  + reading train data
  + adding columns names from features and data from y_test and subject_test to X_test
  + adding columns names from features and data from y_test and subject_test to X_train
2. Step 1 => Merges the training and the test sets to create one data set.
3. Step 2 => Extracts only the measurements on the mean and standard deviation for each measurement.
  + filter column names
  + get only columns for standard deviation and mean values, also saves activity and subject values 
4. Step 3 => Uses descriptive activity names to name the activities in the data set
5. Step 4 => Appropriately labels the data set with descriptive variable names.
  + as columns 67 and 68 are named subjecy and activity there is no need to 'clean' them
  + removing '-', '()' and changinf t -> time and f to freq
6. Step 5 => From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  + Split data.cleaned by subject and activity, with the means for each row
