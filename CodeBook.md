# CodeBook

This code book summarizes the data calculated in `tidy_data.txt`.

## Step 1. Merge the training and the test sets to create one data set.
First, the data in the following files were loaded into R, and then combined to add column names and merge to create one data set.:
- features.txt
- activity_labels.txt
- subject_train.txt
- x_train.txt
- y_train.txt
- subject_test.txt
- x_test.txt
- y_test.txt


## Step 2. Extract only the measurements on the mean and standard deviation for each measurement. 
first, the names of the columns were extracted and a logical vector created. This vector contains the indexes for the columns that names contains: mean, std, activity and subject.
The data obtained from last section were subseted with this logical vector to extract the information wanted.

## Step 3. Use descriptive activity names to name the activities in the data set
The numbers related to the activities were replaced by their representative names from the `activity_labels.txt`.

## Section 4. Appropriately label the data set with descriptive activity names.
To clean the data, all parentheses were removed with *gsub function* in all columns with the *apply function*. With the same approach all columns that started with *t* or *f* now start with *time* or *freq*, respectively.

### Activity Labels

* WALKING`: value 1
* WALKING_UPSTAIRS: value 2
* WALKING_DOWNSTAIRS: value 3
* SITTING: value 4
* STANDING: value 5
* LAYING: value 6

## Section 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
The tidy_data.txt was created by getting from the data set the average of each variable for each activity and subject.