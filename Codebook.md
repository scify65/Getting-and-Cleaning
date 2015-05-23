This is the codebook for the Getting and Cleaning Data course project. It coveres the variables present in the final data set: **tds.txt**

## Study design

The data for this project is from a study performed by the UCI Machine Learning Repository, titled "Human Activity Recognition Using Smartphones." The data is available as a .ZIP file at this link: [link]https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The study involved 30 participants wearing a Samsung Galaxy S II and performing various activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying). The data was obtained by the integral accelerometer and gyroscope in each phone, and the participants were randomly split into two sets: training (70%) and testing (30%).

The final data set for this project is a reduced set of the information from the above study, focusing on the average values of the mean and standard deviation measurements for a range of movements, grouped by activity type and subject.

## Code book
(Note: Measurement variables have been compressed across X, Y, and Z axes and mean and standard deviation measurements. A complete measurement variable name, for example, is **tBodyAcc.mean...X**)
* **Activity** (Factor) Identifies the activity type for particular measurements.
    + Levels: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying
* **id** (Int) Identification variable marking individual subjects.
* **tBodyAcc** (Num) Acceleration from body motion
* **tGravityAcc** (Num) Acceleration from gravity
* **tBodyAccJerk** (Num) Rate of change of linear acceleration for body motion
* **tBodyGyro** (Num) Angular body motion
* **tBodyGyroJerk** (Num) Rate of change of angular body motion
* **fBodyAcc** (Num)