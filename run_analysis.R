# library(dplyr)
library(plyr)
# Step 0 => loading data and completing X_test and X_train
#reading features and activity data
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# reading test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# reading train data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

# adding columns names from features and data from y_test and subject_test to X_test
names(X_test) <- as.character(features$V2)
X_test$activity <- y_test$V1
X_test$subject <- subject_test$V1

# adding columns names from features and data from y_test and subject_test to X_train
names(X_train) <- as.character(features$V2)
X_train$activity <- y_train$V1
X_train$subject <- subject_train$V1

# Step 1 => Merges the training and the test sets to create one data set.
data <- rbind(X_test, X_train) 

# Step 2 => Extracts only the measurements on the mean and standard deviation for each measurement.
## filter column names
names <- colnames(data)
#get only columns for standard deviation and mean values, also saves activity and subject values 
data.cleaned <- grep("std\\(\\)|mean\\(\\)|activity|subject", names, value=TRUE)
data.cleaned <- data[, data.cleaned] 

# Step 3 => Uses descriptive activity names to name the activities in the data set
data.cleaned$activity <- activity_labels$V2[data.cleaned$activity]

# Step 4 => Appropriately labels the data set with descriptive variable names.
# as columns 67 and 68 are named subjecy and activity there is no need to 'clean' them
# removing '-', '()' and changinf t -> time and f to freq
aux <- apply(as.array(names(data.cleaned[1:66])), 1, function(x) x <- gsub('-|(\\(\\))','', x))
aux<- apply(as.array(aux), 1, function(x) x <- sub('^t','time.', x))
aux<- apply(as.array(aux), 1, function(x) x <- gsub('^f','freq.', x))
names(data.cleaned) <- c(as.character(aux), names(data.cleaned[67]), names(data.cleaned[68]))

# Step 5 => From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Split data.cleaned by subject and activity, with the means for each row
tidy_data <- ddply(data.cleaned, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
