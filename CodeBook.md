CODE BOOK
=========
Feb 22nd 2015

Data Set Code Book: Human Activity Recognition Using Smartphones
----------------------------------------------------------------


The tidy data contains records for 180 observations of 70 variables, one record for mean of variables per activity per volunteers/subject. Total count of volunteers is 30.


**A. Following variables were created while tiding the original data:**

<table style="width:100%">
  <tr>
    <th align=left>Name</th>
    <th align=left>Description</th>
  </tr>
<tr>
</tr>
<tr>
    <td>activity</td>
    <td>Character/String. Type of activity for which variables have been recorded. These activities are (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
Factored to map to series of 1:6, where 1 corresponds to "WALKING", 2 is "WALKING_UPSTAIRS" and so on, in order</td>
</tr>
<tr>
    <td>subject</td>
    <td>Numeric. Volenteer #, range from 1: 30|contains data for both test & training volunteers.</td>
</tr>
<tr>
    <td>id</td>
    <td>Numeric. Index variable for the record. </td>
</tr>
<tr>
    <td>actlevel</td>
    <td>Numeric. Activity level, ranges 1:6, each digits matches to the factor activity. See 1 (above) and 'about data' at in Appendix)</td>
</tr>
<tr>
    <td>tidy_data</td>
    <td>DataFrame. Name for resultant tidy data set after processing is complete. This data is available for view & further processing as desired</td>
</tr>
<tr></tr>
</table>


**B. All below variables are fetched from originally provided untidy data set: **

<table style="width:100%">
  <tr>
    <th align=left>Name</th>
    <th align=left>Description</th>
  </tr>
  <tr><td>tBodyAcc-mean()-X </td><td>  time domain, body linear acceleration, axial signals-X,   
                        Mean value</td><tr>
                        
<tr><td>tBodyAcc-mean()-Y </td><td>    time domain, body linear acceleration, axial signals-Y, 
                        Mean value</td><tr>
<tr><td>tBodyAcc-mean()-Z </td><td>    time domain, body linear acceleration, axial signals-Z, 
                        Mean value</td><tr>
                        
<tr><td>tBodyAcc-std()-X  </td><td>    time domain, body linear acceleration, axial signals-X, 
                        Standard deviation value</td><tr>
                        
<tr><td>tBodyAcc-std()-Y  </td><td>      time domain, body linear acceleration, axial signals-Y, 
                          Standard deviation value</td><tr>
                          
<tr><td>tBodyAcc-std()-Z </td><td>     time domain, body linear acceleration, axial signals-Z,
                          Standard deviation value</td><tr>
                          
<tr><td>tGravityAcc-mean()-X</td><td>  time domain, gravity acceleration, axial signals-X, 
                          Mean value</td><tr>
                          
<tr><td>tGravityAcc-mean()-Y </td><td> time domain, gravity acceleration, axial signals-Y, 
                          Mean value</td><tr>
                          
<tr><td>tGravityAcc-mean()-Z </td><td>   time domain, gravity acceleration, axial signals-Z,                             
                            Mean value</td><tr>
                            
<tr><td>tGravityAcc-std()-X</td><td>     time domain, gravity acceleration, axial signals-X, 
                            Standard deviation value</td><tr>
                            
<tr><td>tGravityAcc-std()-Y </td><td>    time domain, gravity acceleration, axial signals-Y, 
                            Standard deviation value</td><tr>

<tr><td>tGravityAcc-std()-Z</td><td>     time domain, gravity acceleration, axial signals-Z, 
                            Standard deviation value</td><tr>
                            
<tr><td>tBodyAccJerk-mean()-X</td><td>   time domain, body linear acceleration, axial signals-X, 
                            Jerk signal, Mean value</td><tr>
                            
<tr><td>tBodyAccJerk-mean()-Y </td><td>  time domain, body linear acceleration, axial signals-Y, 
                            Jerk signals, Mean value</td><tr>
<tr><td>tBodyAccJerk-mean()-Z </td><td>  time domain, body linear acceleration, axial signals-Z, 
                            Jerk signals, Mean value</td><tr>
                            
<tr><td>tBodyAccJerk-std()-X </td><td>   time domain, body linear acceleration, axial signals-X, 
                            Jerk signals, Standard deviation value   </td><tr>                      
                        
<tr><td>tBodyAccJerk-std()-Y</td><td>    time domain, body linear acceleration, Jerk signals, 
                            axial signals-Y, Standard deviation value</td><tr>
                            
<tr><td>tBodyAccJerk-std()-Z </td><td>   time domain, body linear acceleration, Jerk signals,
                            axial signals-Z, Standard deviation value</td><tr>
                            
<tr><td>tBodyGyro-mean()-X</td><td>      time domain, body angular velocity, axial signals-X, 
                            Mean value</td><tr>
                            
<tr><td>tBodyGyro-mean()-Y  </td><td>    time domain, body angular velocity, axial signals-Y, 
                            Mean value</td><tr>
                            
<tr><td>tBodyGyro-mean()-Z </td><td>     time domain, body angular velocity, axial signals-Z, 
                            Mean value</td><tr>
                            
<tr><td>tBodyGyro-std()-X </td><td>      time domain, body angular velocity, axial signals -X, 
                            Standard deviation value</td><tr>
                            
<tr><td>tBodyGyro-std()-Y</td><td>       time domain, body angular velocity, axial signals-Y, 
                            Standard deviation value</td><tr>
                            
<tr><td>tBodyGyro-std()-Z </td><td>      time domain, body angular velocity, axial signals-Z, 
                            Standard deviation value</td><tr>
                                                     
<tr><td>tBodyGyroJerk-mean()-X</td><td>  time domain, body angular velocity, Jerk signals, 
                            axial signals -X,Mean value</td><tr>
                            
<tr><td>tBodyGyroJerk-mean()-Y</td><td>  time domain, body angular velocity, Jerk signals, 
                            axial signals -Y, Mean value</td><tr>
                            
<tr><td>tBodyGyroJerk-mean()-Z</td><td>  time domain, body angular velocity, Jerk signals, 
                            axial signals-Z, Mean value</td><tr>
                            
<tr><td>tBodyGyroJerk-std()-X</td><td>   time domain, body angular velocity, Jerk signals, 
                            axial signals -X, Standard deviation value
                            </td><tr>
<tr><td>tBodyGyroJerk-std()-Y</td><td>   time domain, body angular velocity, Jerk signals, 
                            axial signals-Y, Standard deviation value</td><tr>
                            
<tr><td>tBodyGyroJerk-std()-Z</td><td>   time domain, body angular velocity, Jerk signals, 
                            axial signals-Z, Standard deviation value</td><tr>
                            
<tr><td>tBodyAccMag-mean()</td><td>      time domain, body linear acceleration, Euclidean norm,
                            Mean value</td><tr>
                            
<tr><td>tBodyAccMag-std() </td><td>      time domain, body linear acceleration, Euclidean norm, 
                            Standard deviation value</td><tr>
                            
<tr><td>tGravityAccMag-mean()</td><td>   time domain, gravity acceleration, Euclidean norm, 
                            Mean value
                            </td><tr>
<tr><td>tGravityAccMag-std() </td><td>   time domain, gravity acceleration, Euclidean norm, 
                            Standard deviation value
                            </td><tr>
<tr><td>tBodyAccJerkMag-mean()</td><td>  time domain, body linear acceleration,Jerk signals, 
                            Euclidean norm, Mean value</td><tr>
                            
<tr><td>tBodyAccJerkMag-std() </td><td>  time domain, body linear acceleration, Jerk signals, 
                            Euclidean norm, Standard deviation value</td><tr>
                            
<tr><td>tBodyGyroMag-mean() </td><td>    time domain, body angular velocity, Euclidean norm,
                            Mean value</td><tr>
                            
<tr><td>tBodyGyroMag-std()  </td><td>    time domain, body angular velocity, 
                            Standard deviation value</td><tr>
                            
<tr><td>tBodyGyroJerkMag-mean() </td><td>time domain, body angular velocity, Jerk signals, 
                            Euclidean norm, Mean value</td><tr>
                            
<tr><td>tBodyGyroJerkMag-std()  </td><td>time domain, body angular velocity, Jerk signals, 
                            Euclidean norm, tandard deviation value</td><tr>

<tr><td>fBodyAcc-mean()-X</td><td>       frequency domain, body linear acceleration, axial signals-X, 
                            Mean value</td><tr>
                            
<tr><td>fBodyAcc-mean()-Y  </td><td>     frequency domain, body linear acceleration, axial signals-Y,
                            Mean value</td><tr>
                            
<tr><td>fBodyAcc-mean()-Z</td><td>       frequency domain, body linear acceleration, axial signals-Z, 
                            Mean value</td><tr>
                            
<tr><td>fBodyAcc-std()-X   </td><td>     frequency domain, body linear acceleration,axial signals-X, 
                            Standard deviation value</td><tr>
                            
<tr><td>  fBodyAcc-std()-Y  </td><td>      frequency domain, body linear acceleration, axial signals-Y,  
                            Standard deviation value</td><tr>
                            
<tr><td>	fBodyAcc-std()-Z  </td><td>      frequency domain, body linear acceleration, axial signals-Z,
                            Standard deviation value</td><tr>
                            
<tr><td>fBodyAccJerk-mean()-X </td><td>  frequency domain, body linear acceleration, axial signals-X, 
                            Jerk signals, Mean value</td><tr>
                            
<tr><td>fBodyAccJerk-mean()-Y </td><td>  frequency domain, body linear acceleration, Jerk signals, 
                            axial signals-Y, Mean value
                            </td><tr>
<tr><td>fBodyAccJerk-mean()-Z   </td><td> frequency domain, body linear acceleration, Jerk signals, 
                            axial signals-Z, Mean value</td><tr>
                            
<tr><td>fBodyAccJerk-std()-X</td><td>   frequency domain, body linear acceleration, Jerk signals, 
                            axial signals -X, Standard deviation value
                            </td><tr>
<tr><td>fBodyAccJerk-std()-Y  </td><td>  frequency domain, body linear acceleration, Jerk signals, 
                            axial signals-Y, Standard deviation value</td><tr>
                            
<tr><td>fBodyAccJerk-std()-Z</td><td>    frequency domain, body linear acceleration, Jerk signals, 
                            axial signals-Z, Standard deviation value</td><tr>
                            
<tr><td>fBodyGyro-mean()-X  </td><td>    frequency domain, body angular velocity, axial signals -X, 
                            Mean value</td><tr>
                            
<tr><td>fBodyGyro-mean()-Y</td><td>      frequency domain, body angular velocity, axial signals-Y, 
                            Mean value</td><tr>
                            
<tr><td>fBodyGyro-mean()-Z </td><td>     frequency domain, body angular velocity, axial signals-Z, 
                            Mean value</td><tr>

<tr><td>fBodyGyro-std()-X  </td><td>     frequency domain, body angular velocity, axial signals -X,
                            Standard deviation value</td><tr>
                            
<tr><td>fBodyGyro-std()-Y  </td><td>     frequency domain, body angular velocity, axial signals-Y, 
                            Standard deviation value</td><tr>
                            
<tr><td>fBodyGyro-std()-Z </td><td>      frequency domain, body angular velocity, axial signals-Z, 
                            Standard deviation value</td><tr>
                            
<tr><td>fBodyAccMag-mean()</td><td>      frequency domain, body linear acceleration, Euclidean norm,
                            Mean value</td><tr>
                            
<tr><td>fBodyAccMag-std()</td><td>      frequency domain, body linear acceleration, Euclidean norm, 
                            Standard deviation value
                            
<tr><td>fBodyBodyAccJerkMag-mean()</td><td>  frequency domain, body linear acceleration, Jerk signals,
                                Euclidean norm, Mean value
                                
<tr><td>fBodyBodyAccJerkMag-std() </td><td>  frequency domain, body linear acceleration, Jerk signals,
                                Euclidean norm, Standard deviation value</td><tr>
                                
<tr><td>fBodyBodyGyroMag-mean()</td><td>     frequency domain, body angular velocity, Euclidean norm, 
                                Mean value</td><tr>
                                
<tr><td>fBodyBodyGyroMag-std()</td><td>      frequency domain, body angular velocity, Euclidean norm, 
                                Standard deviation value</td><tr>
                                
<tr><td>fBodyBodyGyroJerkMag-mean() </td><td>frequency domain, body angular velocity, Jerk signals, 
                                Euclidean norm, Mean value
                                </td><tr>
<tr><td>fBodyBodyGyroJerkMag-std()</td><td>  frequency domain, body angular velocity, Jerk signals, 
                                Euclidean norm, Standard deviation value</td><tr>
</table>



Appendix
---------

***About Data***

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

This data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


***Note***

- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.

