---
title: 'CodeBook'
author: "Chris Long"
date: "Saturday, April 25, 2015"
output: html_document
---

Introduction of the experiment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (Walking, Walking upstairs, Walking downstairs, Sitting, Standing, Laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Features information

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerationXYZ and timeGyroXYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerationXYZ and timeGravityAccelerationXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerkXYZ and timeBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerationXYZ, frequencyBodyAccelerationJerkXYZ, frequencyBodyGyroXYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroMagnitude, frequencyBodyGyroJerkMagnitude. (Note the 'frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAccelerationXYZ:                   
time domain body acceleration signals

timeGravityAccelerationXYZ:                
time domain gravity acceleration signals

timeBodyAccelerationJerkXYZ:               
time domain body acceleration jerk signals

timeBodyGyroXYZ:                           
time domain body gyroscopic signals

timeBodyGyroJerkXYZ:                       
time domail body gyroscopic jerk signals

timeBodyAccelerationMagnitude:             
magnitude of time domain body acceleration signals

timeGravityAccelerationMagnitude:          
magnitude of time domain gravity acceleration signals

timeBodyAccelerationJerkMagnitude:         
magnitude of time domain body acceleration jerk signals

timeBodyGyroMagnitude:                     
magnitude of time domain body gyroscopic signals

timeBodyGyroJerkMagnitude:                 
magnitude of time domain body gyroscopic jerk signals

frequencyBodyAccelerationXYZ:              
frequency domain body acceleration signals

frequencyBodyAccelerationJerkXYZ:          
frequency domain body acceleration jerk signals

frequencyBodyGyroXYZ:                      
frequency domain body gyroscopic signals

frequencyBodyAccelerationMagnitude:        
magnitude of frequency domain body acceleration signals

frequencyBodyAccelerationJerkMagnitude:    
magnitude of frequency domain body acceleration jerk signals

frequencyBodyGyroMagnitude:                
magnitude of frequency domain body gyroscopic signals

frequencyBodyGyroJerkMagnitude:            
magnitude of frequency domain body gyroscopic jerk signals

The set of variables that were estimated from these signals are: 

mean(): 
Mean value

std(): 
Standard deviation

meanFreq(): 
Weighted average of the frequency components to obtain a mean frequency