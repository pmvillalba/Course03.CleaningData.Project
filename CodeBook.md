# Raw data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See "features_info.txt" for more details. 
For each record it is provided:

    * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    * Triaxial Angular velocity from the gyroscope. 
    * A 561-feature vector with time and frequency domain variables. 
    * Its activity label. 
    * An identifier of the subject who carried out the experiment.

## Available descriptive files

    * "features_info.txt": Shows information about the variables used on the feature vector.
    * "features.txt": List of all features.
    * "activity_labels.txt": Links the class labels with their activity name.
    * "train/X_train.txt": Training set.
    * "train/y_train.txt": Training labels.
    * "test/X_test.txt": Test set.
    * "test/y_test.txt": Test labels.

## Available data files
The following files are available for the train and test data. Their descriptions are equivalent.

    * "train/subject_train.txt": Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
    * "train/Inertial Signals/total_acc_x_train.txt": The acceleration signal from the smartphone accelerometer X axis in standard gravity units "g". Every row shows a 128 element vector. The same description applies for the "total_acc_x_train.txt" and "total_acc_z_train.txt" files for the Y and Z axis.
    * "train/Inertial Signals/body_acc_x_train.txt": The body acceleration signal obtained by subtracting the gravity from the total acceleration.
    * "train/Inertial Signals/body_gyro_x_train.txt": The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Text files in “Inertial Signals” folder will be discarded in this Project.

# Getting and cleaning data

The transformations performed in this Project over the raw data are the following:

    * Merge training and test sets to create one data set.
    * Extract only the mean and standard deviation for each measurement.
    * Use descriptive activity names to name the activities in the data set.
    * Label the data set with descriptive variable names.
    * Create a final tidy data set with the average of each variable for each activity and each subject.

# Tidy dataset code book

Here is the code book for the final dataset:

# Data report overview
The dataset examined has the following dimensions:


---------------------------------
Feature                    Result
------------------------ --------
Number of observations        180

Number of variables            81
---------------------------------






































































































































































# Codebook summary table

---------------------------------------------------------------------------------------------------------------------
Label   Variable                                                         Class       # unique  Missing  Description  
                                                                                       values                        
------- ---------------------------------------------------------------- --------- ---------- --------- -------------
        **[IdSubject]**                                                  integer           30  0.00 %                

        **[IdActivity]**                                                 integer            6  0.00 %                

        **[TimeBodyAccelerometerMean.X]**                                numeric          180  0.00 %                

        **[TimeBodyAccelerometerMean.Y]**                                numeric          180  0.00 %                

        **[TimeBodyAccelerometerMean.Z]**                                numeric          180  0.00 %                

        **[TimeBodyAccelerometerStandardDeviation.X]**                   numeric          180  0.00 %                

        **[TimeBodyAccelerometerStandardDeviation.Y]**                   numeric          180  0.00 %                

        **[TimeBodyAccelerometerStandardDeviation.Z]**                   numeric          180  0.00 %                

        **[TimeGravityAccelerometerMean.X]**                             numeric          180  0.00 %                

        **[TimeGravityAccelerometerMean.Y]**                             numeric          180  0.00 %                

        **[TimeGravityAccelerometerMean.Z]**                             numeric          180  0.00 %                

        **[TimeGravityAccelerometerStandardDeviation.X]**                numeric          180  0.00 %                

        **[TimeGravityAccelerometerStandardDeviation.Y]**                numeric          180  0.00 %                

        **[TimeGravityAccelerometerStandardDeviation.Z]**                numeric          180  0.00 %                

        **[TimeBodyAccelerometerJerkMean.X]**                            numeric          180  0.00 %                

        **[TimeBodyAccelerometerJerkMean.Y]**                            numeric          180  0.00 %                

        **[TimeBodyAccelerometerJerkMean.Z]**                            numeric          180  0.00 %                

        **[TimeBodyAccelerometerJerkStandardDeviation.X]**               numeric          180  0.00 %                

        **[TimeBodyAccelerometerJerkStandardDeviation.Y]**               numeric          180  0.00 %                

        **[TimeBodyAccelerometerJerkStandardDeviation.Z]**               numeric          180  0.00 %                

        **[TimeBodyGyroscopeMean.X]**                                    numeric          180  0.00 %                

        **[TimeBodyGyroscopeMean.Y]**                                    numeric          180  0.00 %                

        **[TimeBodyGyroscopeMean.Z]**                                    numeric          180  0.00 %                

        **[TimeBodyGyroscopeStandardDeviation.X]**                       numeric          180  0.00 %                

        **[TimeBodyGyroscopeStandardDeviation.Y]**                       numeric          180  0.00 %                

        **[TimeBodyGyroscopeStandardDeviation.Z]**                       numeric          180  0.00 %                

        **[TimeBodyGyroscopeJerkMean.X]**                                numeric          180  0.00 %                

        **[TimeBodyGyroscopeJerkMean.Y]**                                numeric          180  0.00 %                

        **[TimeBodyGyroscopeJerkMean.Z]**                                numeric          180  0.00 %                

        **[TimeBodyGyroscopeJerkStandardDeviation.X]**                   numeric          180  0.00 %                

        **[TimeBodyGyroscopeJerkStandardDeviation.Y]**                   numeric          180  0.00 %                

        **[TimeBodyGyroscopeJerkStandardDeviation.Z]**                   numeric          180  0.00 %                

        **[TimeBodyAccelerometerMagnitudeMean]**                         numeric          180  0.00 %                

        **[TimeBodyAccelerometerMagnitudeStandardDeviation]**            numeric          180  0.00 %                

        **[TimeGravityAccelerometerMagnitudeMean]**                      numeric          180  0.00 %                

        **[TimeGravityAccelerometerMagnitudeStandardDeviation]**         numeric          180  0.00 %                

        **[TimeBodyAccelerometerJerkMagnitudeMean]**                     numeric          180  0.00 %                

        **[TimeBodyAccelerometerJerkMagnitudeStandardDeviation]**        numeric          180  0.00 %                

        **[TimeBodyGyroscopeMagnitudeMean]**                             numeric          180  0.00 %                

        **[TimeBodyGyroscopeMagnitudeStandardDeviation]**                numeric          180  0.00 %                

        **[TimeBodyGyroscopeJerkMagnitudeMean]**                         numeric          180  0.00 %                

        **[TimeBodyGyroscopeJerkMagnitudeStandardDeviation]**            numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMean.X]**                           numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMean.Y]**                           numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMean.Z]**                           numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerStandardDeviation.X]**              numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerStandardDeviation.Y]**              numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerStandardDeviation.Z]**              numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMeanFreq.X]**                       numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMeanFreq.Y]**                       numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMeanFreq.Z]**                       numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMean.X]**                       numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMean.Y]**                       numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMean.Z]**                       numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkStandardDeviation.X]**          numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkStandardDeviation.Y]**          numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkStandardDeviation.Z]**          numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMeanFreq.X]**                   numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMeanFreq.Y]**                   numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMeanFreq.Z]**                   numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMean.X]**                               numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMean.Y]**                               numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMean.Z]**                               numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeStandardDeviation.X]**                  numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeStandardDeviation.Y]**                  numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeStandardDeviation.Z]**                  numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMeanFreq.X]**                           numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMeanFreq.Y]**                           numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMeanFreq.Z]**                           numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMagnitudeMean]**                    numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMagnitudeStandardDeviation]**       numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerMagnitudeMeanFreq]**                numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMagnitudeMean]**                numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation]**   numeric          180  0.00 %                

        **[FrequencyBodyAccelerometerJerkMagnitudeMeanFreq]**            numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMagnitudeMean]**                        numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMagnitudeStandardDeviation]**           numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeMagnitudeMeanFreq]**                    numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeJerkMagnitudeMean]**                    numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation]**       numeric          180  0.00 %                

        **[FrequencyBodyGyroscopeJerkMagnitudeMeanFreq]**                numeric          180  0.00 %                
---------------------------------------------------------------------------------------------------------------------




# Variable list
## IdSubject


-----------------------------------
Feature                      Result
------------------------- ---------
Variable type               integer

Number of missing obs.      0 (0 %)

Number of unique values          30

Median                         15.5

1st and 3rd quartiles         8; 23

Min. and max.                 1; 30
-----------------------------------




\fullline

## IdActivity


-----------------------------------
Feature                      Result
------------------------- ---------
Variable type               integer

Number of missing obs.      0 (0 %)

Number of unique values           6

Median                          3.5

1st and 3rd quartiles          2; 5

Min. and max.                  1; 6
-----------------------------------




\fullline

## TimeBodyAccelerometerMean.X


--------------------------------------
Feature                         Result
------------------------- ------------
Variable type                  numeric

Number of missing obs.         0 (0 %)

Number of unique values            180

Median                            0.28

1st and 3rd quartiles       0.27; 0.28

Min. and max.                0.22; 0.3
--------------------------------------




\fullline

## TimeBodyAccelerometerMean.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.02

1st and 3rd quartiles       -0.02; -0.01

Min. and max.                   -0.04; 0
----------------------------------------




\fullline

## TimeBodyAccelerometerMean.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.11

1st and 3rd quartiles        -0.11; -0.1

Min. and max.               -0.15; -0.08
----------------------------------------




\fullline

## TimeBodyAccelerometerStandardDeviation.X


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.75

1st and 3rd quartiles       -0.98; -0.2

Min. and max.                  -1; 0.63
---------------------------------------




\fullline

## TimeBodyAccelerometerStandardDeviation.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.51

1st and 3rd quartiles       -0.94; -0.03

Min. and max.                -0.99; 0.62
----------------------------------------




\fullline

## TimeBodyAccelerometerStandardDeviation.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.65

1st and 3rd quartiles       -0.95; -0.23

Min. and max.                -0.99; 0.61
----------------------------------------




\fullline

## TimeGravityAccelerometerMean.X


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.92

1st and 3rd quartiles        0.84; 0.94

Min. and max.               -0.68; 0.97
---------------------------------------




\fullline

## TimeGravityAccelerometerMean.Y


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.13

1st and 3rd quartiles       -0.23; 0.09

Min. and max.               -0.48; 0.96
---------------------------------------




\fullline

## TimeGravityAccelerometerMean.Z


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.02

1st and 3rd quartiles       -0.12; 0.15

Min. and max.                -0.5; 0.96
---------------------------------------




\fullline

## TimeGravityAccelerometerStandardDeviation.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.97

1st and 3rd quartiles       -0.98; -0.95

Min. and max.                  -1; -0.83
----------------------------------------




\fullline

## TimeGravityAccelerometerStandardDeviation.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.96

1st and 3rd quartiles       -0.97; -0.94

Min. and max.               -0.99; -0.64
----------------------------------------




\fullline

## TimeGravityAccelerometerStandardDeviation.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.95

1st and 3rd quartiles       -0.96; -0.92

Min. and max.               -0.99; -0.61
----------------------------------------




\fullline

## TimeBodyAccelerometerJerkMean.X


--------------------------------------
Feature                         Result
------------------------- ------------
Variable type                  numeric

Number of missing obs.         0 (0 %)

Number of unique values            180

Median                            0.08

1st and 3rd quartiles       0.07; 0.08

Min. and max.               0.04; 0.13
--------------------------------------




\fullline

## TimeBodyAccelerometerJerkMean.Y


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.01

1st and 3rd quartiles           0; 0.01

Min. and max.               -0.04; 0.06
---------------------------------------




\fullline

## TimeBodyAccelerometerJerkMean.Z


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                                0

1st and 3rd quartiles          -0.01; 0

Min. and max.               -0.07; 0.04
---------------------------------------




\fullline

## TimeBodyAccelerometerJerkStandardDeviation.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.81

1st and 3rd quartiles       -0.98; -0.22

Min. and max.                -0.99; 0.54
----------------------------------------




\fullline

## TimeBodyAccelerometerJerkStandardDeviation.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.78

1st and 3rd quartiles       -0.97; -0.15

Min. and max.                -0.99; 0.36
----------------------------------------




\fullline

## TimeBodyAccelerometerJerkStandardDeviation.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.88

1st and 3rd quartiles       -0.98; -0.51

Min. and max.                -0.99; 0.03
----------------------------------------




\fullline

## TimeBodyGyroscopeMean.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.03

1st and 3rd quartiles       -0.05; -0.02

Min. and max.                -0.21; 0.19
----------------------------------------




\fullline

## TimeBodyGyroscopeMean.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.07

1st and 3rd quartiles       -0.09; -0.06

Min. and max.                 -0.2; 0.03
----------------------------------------




\fullline

## TimeBodyGyroscopeMean.Z


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.09

1st and 3rd quartiles         0.07; 0.1

Min. and max.               -0.07; 0.18
---------------------------------------




\fullline

## TimeBodyGyroscopeStandardDeviation.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.79

1st and 3rd quartiles       -0.97; -0.44

Min. and max.                -0.99; 0.27
----------------------------------------




\fullline

## TimeBodyGyroscopeStandardDeviation.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                              -0.8

1st and 3rd quartiles       -0.96; -0.42

Min. and max.                -0.99; 0.48
----------------------------------------




\fullline

## TimeBodyGyroscopeStandardDeviation.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                              -0.8

1st and 3rd quartiles       -0.96; -0.31

Min. and max.                -0.99; 0.56
----------------------------------------




\fullline

## TimeBodyGyroscopeJerkMean.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                              -0.1

1st and 3rd quartiles        -0.1; -0.09

Min. and max.               -0.16; -0.02
----------------------------------------




\fullline

## TimeBodyGyroscopeJerkMean.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.04

1st and 3rd quartiles       -0.05; -0.04

Min. and max.               -0.08; -0.01
----------------------------------------




\fullline

## TimeBodyGyroscopeJerkMean.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.05

1st and 3rd quartiles       -0.06; -0.05

Min. and max.               -0.09; -0.01
----------------------------------------




\fullline

## TimeBodyGyroscopeJerkStandardDeviation.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.84

1st and 3rd quartiles       -0.98; -0.46

Min. and max.                   -1; 0.18
----------------------------------------




\fullline

## TimeBodyGyroscopeJerkStandardDeviation.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.89

1st and 3rd quartiles       -0.98; -0.59

Min. and max.                    -1; 0.3
----------------------------------------




\fullline

## TimeBodyGyroscopeJerkStandardDeviation.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.86

1st and 3rd quartiles       -0.98; -0.47

Min. and max.                   -1; 0.19
----------------------------------------




\fullline

## TimeBodyAccelerometerMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.48

1st and 3rd quartiles       -0.96; -0.09

Min. and max.                -0.99; 0.64
----------------------------------------




\fullline

## TimeBodyAccelerometerMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.61

1st and 3rd quartiles       -0.94; -0.21

Min. and max.                -0.99; 0.43
----------------------------------------




\fullline

## TimeGravityAccelerometerMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.48

1st and 3rd quartiles       -0.96; -0.09

Min. and max.                -0.99; 0.64
----------------------------------------




\fullline

## TimeGravityAccelerometerMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.61

1st and 3rd quartiles       -0.94; -0.21

Min. and max.                -0.99; 0.43
----------------------------------------




\fullline

## TimeBodyAccelerometerJerkMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.82

1st and 3rd quartiles       -0.98; -0.25

Min. and max.                -0.99; 0.43
----------------------------------------




\fullline

## TimeBodyAccelerometerJerkMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                              -0.8

1st and 3rd quartiles       -0.98; -0.22

Min. and max.                -0.99; 0.45
----------------------------------------




\fullline

## TimeBodyGyroscopeMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.66

1st and 3rd quartiles       -0.95; -0.22

Min. and max.                -0.98; 0.42
----------------------------------------




\fullline

## TimeBodyGyroscopeMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.74

1st and 3rd quartiles       -0.95; -0.36

Min. and max.                 -0.98; 0.3
----------------------------------------




\fullline

## TimeBodyGyroscopeJerkMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.86

1st and 3rd quartiles       -0.99; -0.51

Min. and max.                   -1; 0.09
----------------------------------------




\fullline

## TimeBodyGyroscopeJerkMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.88

1st and 3rd quartiles       -0.98; -0.58

Min. and max.                   -1; 0.25
----------------------------------------




\fullline

## FrequencyBodyAccelerometerMean.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.77

1st and 3rd quartiles       -0.98; -0.22

Min. and max.                   -1; 0.54
----------------------------------------




\fullline

## FrequencyBodyAccelerometerMean.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.59

1st and 3rd quartiles       -0.95; -0.06

Min. and max.                -0.99; 0.52
----------------------------------------




\fullline

## FrequencyBodyAccelerometerMean.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.72

1st and 3rd quartiles       -0.96; -0.32

Min. and max.                -0.99; 0.28
----------------------------------------




\fullline

## FrequencyBodyAccelerometerStandardDeviation.X


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.75

1st and 3rd quartiles       -0.98; -0.2

Min. and max.                  -1; 0.66
---------------------------------------




\fullline

## FrequencyBodyAccelerometerStandardDeviation.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.51

1st and 3rd quartiles       -0.94; -0.08

Min. and max.                -0.99; 0.56
----------------------------------------




\fullline

## FrequencyBodyAccelerometerStandardDeviation.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.64

1st and 3rd quartiles       -0.95; -0.27

Min. and max.                -0.99; 0.69
----------------------------------------




\fullline

## FrequencyBodyAccelerometerMeanFreq.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.26

1st and 3rd quartiles       -0.39; -0.06

Min. and max.                -0.64; 0.16
----------------------------------------




\fullline

## FrequencyBodyAccelerometerMeanFreq.Y


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.01

1st and 3rd quartiles       -0.08; 0.09

Min. and max.               -0.38; 0.47
---------------------------------------




\fullline

## FrequencyBodyAccelerometerMeanFreq.Z


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.07

1st and 3rd quartiles       -0.04; 0.18

Min. and max.                -0.52; 0.4
---------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMean.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.81

1st and 3rd quartiles       -0.98; -0.28

Min. and max.                -0.99; 0.47
----------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMean.Y


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.78

1st and 3rd quartiles       -0.97; -0.2

Min. and max.               -0.99; 0.28
---------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMean.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.87

1st and 3rd quartiles       -0.98; -0.47

Min. and max.                -0.99; 0.16
----------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkStandardDeviation.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.83

1st and 3rd quartiles       -0.98; -0.25

Min. and max.                   -1; 0.48
----------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkStandardDeviation.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.79

1st and 3rd quartiles       -0.97; -0.17

Min. and max.                -0.99; 0.35
----------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkStandardDeviation.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                              -0.9

1st and 3rd quartiles       -0.98; -0.54

Min. and max.               -0.99; -0.01
----------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMeanFreq.X


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.06

1st and 3rd quartiles       -0.29; 0.18

Min. and max.               -0.58; 0.33
---------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMeanFreq.Y


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.23

1st and 3rd quartiles       -0.4; -0.05

Min. and max.                 -0.6; 0.2
---------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMeanFreq.Z


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.09

1st and 3rd quartiles       -0.31; 0.04

Min. and max.               -0.63; 0.23
---------------------------------------




\fullline

## FrequencyBodyGyroscopeMean.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.73

1st and 3rd quartiles       -0.97; -0.34

Min. and max.                -0.99; 0.47
----------------------------------------




\fullline

## FrequencyBodyGyroscopeMean.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.81

1st and 3rd quartiles       -0.97; -0.45

Min. and max.                -0.99; 0.33
----------------------------------------




\fullline

## FrequencyBodyGyroscopeMean.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.79

1st and 3rd quartiles       -0.96; -0.26

Min. and max.                -0.99; 0.49
----------------------------------------




\fullline

## FrequencyBodyGyroscopeStandardDeviation.X


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.81

1st and 3rd quartiles       -0.98; -0.48

Min. and max.                 -0.99; 0.2
----------------------------------------




\fullline

## FrequencyBodyGyroscopeStandardDeviation.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                              -0.8

1st and 3rd quartiles       -0.96; -0.42

Min. and max.                -0.99; 0.65
----------------------------------------




\fullline

## FrequencyBodyGyroscopeStandardDeviation.Z


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.82

1st and 3rd quartiles       -0.96; -0.39

Min. and max.                -0.99; 0.52
----------------------------------------




\fullline

## FrequencyBodyGyroscopeMeanFreq.X


--------------------------------------
Feature                         Result
------------------------- ------------
Variable type                  numeric

Number of missing obs.         0 (0 %)

Number of unique values            180

Median                           -0.12

1st and 3rd quartiles         -0.21; 0

Min. and max.               -0.4; 0.25
--------------------------------------




\fullline

## FrequencyBodyGyroscopeMeanFreq.Y


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.16

1st and 3rd quartiles       -0.29; -0.04

Min. and max.                -0.67; 0.27
----------------------------------------




\fullline

## FrequencyBodyGyroscopeMeanFreq.Z


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.05

1st and 3rd quartiles       -0.15; 0.04

Min. and max.               -0.51; 0.38
---------------------------------------




\fullline

## FrequencyBodyAccelerometerMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.67

1st and 3rd quartiles       -0.96; -0.16

Min. and max.                -0.99; 0.59
----------------------------------------




\fullline

## FrequencyBodyAccelerometerMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.65

1st and 3rd quartiles       -0.95; -0.37

Min. and max.                -0.99; 0.18
----------------------------------------




\fullline

## FrequencyBodyAccelerometerMagnitudeMeanFreq


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.08

1st and 3rd quartiles       -0.01; 0.17

Min. and max.               -0.31; 0.44
---------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.79

1st and 3rd quartiles       -0.98; -0.19

Min. and max.                -0.99; 0.54
----------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.81

1st and 3rd quartiles       -0.98; -0.27

Min. and max.                -0.99; 0.32
----------------------------------------




\fullline

## FrequencyBodyAccelerometerJerkMagnitudeMeanFreq


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.17

1st and 3rd quartiles        0.05; 0.28

Min. and max.               -0.13; 0.49
---------------------------------------




\fullline

## FrequencyBodyGyroscopeMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.77

1st and 3rd quartiles       -0.96; -0.41

Min. and max.                 -0.99; 0.2
----------------------------------------




\fullline

## FrequencyBodyGyroscopeMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.77

1st and 3rd quartiles       -0.95; -0.43

Min. and max.                -0.98; 0.24
----------------------------------------




\fullline

## FrequencyBodyGyroscopeMagnitudeMeanFreq


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                            -0.05

1st and 3rd quartiles       -0.17; 0.08

Min. and max.               -0.46; 0.41
---------------------------------------




\fullline

## FrequencyBodyGyroscopeJerkMagnitudeMean


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.88

1st and 3rd quartiles       -0.98; -0.58

Min. and max.                   -1; 0.15
----------------------------------------




\fullline

## FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation


----------------------------------------
Feature                           Result
------------------------- --------------
Variable type                    numeric

Number of missing obs.           0 (0 %)

Number of unique values              180

Median                             -0.89

1st and 3rd quartiles       -0.98; -0.61

Min. and max.                   -1; 0.29
----------------------------------------




\fullline

## FrequencyBodyGyroscopeJerkMagnitudeMeanFreq


---------------------------------------
Feature                          Result
------------------------- -------------
Variable type                   numeric

Number of missing obs.          0 (0 %)

Number of unique values             180

Median                             0.11

1st and 3rd quartiles        0.05; 0.21

Min. and max.               -0.18; 0.43
---------------------------------------




\fullline


