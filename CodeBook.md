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

* WALKING: value 1
* WALKING_UPSTAIRS: value 2
* WALKING_DOWNSTAIRS: value 3
* SITTING: value 4
* STANDING: value 5
* LAYING: value 6

## Section 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
The tidy_data.txt was created by getting from the data set the average of each variable for each activity and subject.

The following columns compose the `tidy_data.txt`:
1. subject
2. activity
3. time.BodyAccmeanX
4. time.BodyAccmeanY
5. time.BodyAccmeanZ
6. time.BodyAccstdX
7. time.BodyAccstdY
8. time.BodyAccstdZ
9. time.GravityAccmeanX
10. time.GravityAccmeanY
11. time.GravityAccmeanZ
12. time.GravityAccstdX
13. time.GravityAccstdY
14. time.GravityAccstdZ
15. time.BodyAccJerkmeanX
16. time.BodyAccJerkmeanY
17. time.BodyAccJerkmeanZ
18. time.BodyAccJerkstdX
19. time.BodyAccJerkstdY
20. time.BodyAccJerkstdZ
21. time.BodyGyromeanX
22. time.BodyGyromeanY
23. time.BodyGyromeanZ
24. time.BodyGyrostdX
25. time.BodyGyrostdY
26. time.BodyGyrostdZ
27. time.BodyGyroJerkmeanX
28. time.BodyGyroJerkmeanY
29. time.BodyGyroJerkmeanZ
30. time.BodyGyroJerkstdX
31. time.BodyGyroJerkstdY
32. time.BodyGyroJerkstdZ
33. time.BodyAccMagmean
34. time.BodyAccMagstd
35. time.GravityAccMagmean
36. time.GravityAccMagstd
37. time.BodyAccJerkMagmean
38. time.BodyAccJerkMagstd
39. time.BodyGyroMagmean
40. time.BodyGyroMagstd
41. time.BodyGyroJerkMagmean
42. time.BodyGyroJerkMagstd
43. freq.BodyAccmeanX
44. freq.BodyAccmeanY
45. freq.BodyAccmeanZ
46. freq.BodyAccstdX
47. freq.BodyAccstdY
48. freq.BodyAccstdZ
49. freq.BodyAccJerkmeanX
50. freq.BodyAccJerkmeanY
51. freq.BodyAccJerkmeanZ
52. freq.BodyAccJerkstdX
53. freq.BodyAccJerkstdY
54. freq.BodyAccJerkstdZ
55. freq.BodyGyromeanX
56. freq.BodyGyromeanY
57. freq.BodyGyromeanZ
58. freq.BodyGyrostdX
59. freq.BodyGyrostdY
60. freq.BodyGyrostdZ
61. freq.BodyAccMagmean
62. freq.BodyAccMagstd
63. freq.BodyBodyAccJerkMagmean
64. freq.BodyBodyAccJerkMagstd
65. freq.BodyBodyGyroMagmean
66. freq.BodyBodyGyroMagstd
67. freq.BodyBodyGyroJerkMagmean
68. freq.BodyBodyGyroJerkMagstd
