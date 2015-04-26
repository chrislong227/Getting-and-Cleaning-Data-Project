## Load the data and save them in the work space
sub_test = read.table("subject_test.txt")
X_test = read.table("X_test.txt")
y_test = read.table("y_test.txt")
sub_train = read.table("subject_train.txt")
X_train = read.table("X_train.txt")
y_train = read.table("y_train.txt")
act_labels = read.table("activity_labels.txt")
features = read.table("features.txt")

## Step 1. Merge the training and test sets
# Combine the subject and labels data with the test data
mergeData_test = cbind(sub_test, y_test, X_test)
# Assign the names to the merged data, that is, combine the features with the merged data
colnames(mergeData_test) = c("subject", "activity", as.character(features$V2))
# Do the same processes to the train data
mergeData_train = cbind(sub_train, y_train, X_train)
colnames(mergeData_train) = c("subject", "activity", as.character(features$V2))
# Merge the two dataset
mergeData = rbind(mergeData_test, mergeData_train)

## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement 
# Use grep to select the columns that measures means and standard deviation
# Here I use the key words "mean" and "std"
slctCol = grep("mean|std", features$V2)
# The new dataset is
mergeData = mergeData[ , c(1, 2, slctCol + 2)] # The subject and labels columns are also included

## Step 3. Uses descriptive activity names to name the activities in the data set
# make the labels names readable
act_labels[ , 2] = gsub("(\\w)(\\w*)", "\\U\\1\\L\\2", act_labels[ , 2], perl=TRUE)
act_labels[ , 2] = gsub("_u", "U", act_labels[ , 2])
act_labels[ , 2] = gsub("_d", "D", act_labels[ , 2])
# Use the names in act_labels to replace the numbers in the labels column in mergeData
for (i in 1:nrow(mergeData)) {
  mergeData[i, 2] = as.character(act_labels[as.numeric(mergeData[i, 2]), 2])
}

## Step 4. Appropriately labels the data set with descriptive variable names 
# At first, delete all the "-" and "()" in the column names
names(mergeData) = gsub("[-|()]","",names(mergeData))

# Change "t" to "time", "f" to "frequency", "Acc" to "acceleration", and "Mag" to "Magnitude",
# while leave the "Gyro" as what it is because it is already readable and using the full
# name for it may cause the column name to be too long
names(mergeData) = gsub("tB","timeB",names(mergeData))
names(mergeData) = gsub("tG","timeG",names(mergeData))
names(mergeData) = gsub("fB","frequencyB",names(mergeData))
names(mergeData) = gsub("fG","frequencyG",names(mergeData))
names(mergeData) = gsub("Acc","Acceleration",names(mergeData))
names(mergeData) = gsub("Mag","Magnitude",names(mergeData))

# Finally, delete one of the "Body" in the "BodyBody"
names(mergeData) = gsub("BodyBody","Body",names(mergeData))

## Step 5. From the data set in step 4, creates a second, independent tidy data set 
##         with the average of each variable for each activity and each subject
# Call for the dplyr package
install.packages("dplyr")
library(dplyr)
# Create a new tbl_df
mergeData = tbl_df(mergeData)
cleanedData = mergeData %>%
  arrange(subject) %>%
  group_by(subject, activity) %>%
  summarise_each(funs(mean)) %>%
  print(cleanedData)