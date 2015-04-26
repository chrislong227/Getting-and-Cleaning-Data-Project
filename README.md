---
title: 'README'
author: "Chris Long"
date: "Saturday, April 25, 2015"
output: html_document
---

README file for Getting and Cleaning Data course project.

This repo includes the whole raw data set that I used to complete the project, a CodeBook that explains all the variables in the processed data set, and an R script that contains all the code that cleans the data and comments that explain detailed steps to complete the required process.

Steps to complete the course project and details.

1. Merges the training and the test sets to create one data set.
  
  At first merge the X and y test data, as well as X and y train data, as y is the     activity the subject has done in the test or the training. Secondly, merge the test data and train data, putting the features name on the data as the names of variables.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

  Extract the columns that contains the term "mean" or "std".
  
3. Uses descriptive activity names to name the activities in the data set

  Making the labels in "activity_labels.txt" readable and assign them to the labels in the merged dataset.
  
4. Appropriately labels the data set with descriptive variable names. 
  
  Avoid "()" and "-" in the variable names, and use camelCase for the variable names, to make them readable.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  Using the "dplyr" package, group the subject and labels. And for each labels of each subject, compute the mean value for every variable.
  
Please see more details about the process in the comments in the R script.