This is the codebook for the Getting and Cleaning Data course project. It coveres the variables present in the final data set: **tds.txt**

The codebook for the original study can be found in the **features_info.txt** file included with the dataset, which is downloaded as part of the **run_analysis.R** script.

## Study design

The data for this project is from a study performed by the UCI Machine Learning Repository, titled "Human Activity Recognition Using Smartphones." The data is available as a .ZIP file at this link: [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The study involved 30 participants wearing a Samsung Galaxy S II and performing various activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying). The data was obtained by the integral accelerometer and gyroscope in each phone, and the participants were randomly split into two sets: training (70%) and testing (30%).

The final data set for this project is a reduced set of the information from the above study, focusing on the average values of the mean and standard deviation measurements for a range of movements, grouped by activity type and subject.

## Code book
(Note: Measurement variables have been compressed across X, Y, and Z axes and mean and standard deviation (std) measurements. A complete measurement variable name, for example, is **tBodyAcc.mean...X**)
(Note 2: The magnitude variables (e.g. **tBodyAccMag.mean..**) are separated only on the mean/std line, as they are three-dimensional in nature.)
(Note 3: All of the measurement variables were normalized to between -1 and 1 in the original data set, and thus have values within that range.)

* **Activity** (Factor) Identifies the activity type for particular measurements.
    + Levels: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying
* **Subject** (Int) Identification variable marking individual subjects.
    + Levels: 1-30
* **tBodyAcc** (Num) Linear acceleration
* **tGravityAcc** (Num) Acceleration from gravity
* **tBodyAccJerk** (Num) Rate of change of linear acceleration
* **tBodyGyro** (Num) Angular velocity
* **tBodyGyroJerk** (Num) Rate of change of angular velocity
* **tBodyAccMag** (Num) Magnitude of linear acceleration
* **tGravityAccMag** (Num) Magnitude of acceleration from gravity
* **tBodyAccJerkMag** (Num) Rate of change of acceleration from gravity
* **tBodyGyroMag** (Num) Magnitude of angular velocity
* **tBodyGyroJerkMag** (Num) Magnitude of rate of change of angular velocity
* **fBodyAcc** (Num) Fast Fourier Transform of **tBodyAcc**
* **fBodyAccJerk** (Num) Fast Fourier Transform of **tBodyAccJerk**
* **fBodyGyro** (Num) Fast Fourier Transform of **tBodyGyro**
* **fBodyAccMag** (Num) Fast Fourier Transform of **tBodyAccMag**
* **fBodyAccJerkMag** (Num) Fast Fourier Transform of **tBodyAccJerkMag**
* **fBodyGyroMag** (Num) Fast Fourier Transform of **tBodyGyroMag**
* **fBodyGyroJerkMag** (Num) Fast Fourier Transform of **tBodyGyroJerkMag**