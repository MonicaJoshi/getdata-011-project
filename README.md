# getdata-011-project
CouseProject for Getting and Cleaning Data(getdata-011)

README
======

This readme describes purpose, implementation and usage of script run_analysis.R. 
The data variables referred in the result "tidy" data set are described in CodeBook.md.
CodeBook.md and run_analysis.R, can downloaded from source repo of this Readme. 


***Goal***

The purpose of this exercise is to prepare a tidy data that can be later used for further useful analysis.  In this case, the tidy data resulted contains average of selected health measurement variables for each activity performed by each subject/volunteer. 

*** Understanding source data ***

1. X data contains data of various measurements per subject(30 in this case) undergoing a set of activities(6 in this case).  
X data for test volunteers has 2947 observations.
X data for training volunteers has 7352 observations.
Every X data column V1 to Vn, maps to its descriptive names in feature.txt data file. 

2. Every X Data observations also maps to each row of subject data for test or train data set, hence indicating observation recorded a given  volunteer or subject. 
subject data for test has 2947 observations. 
subject data for train has 7352 observations. 

3. Measurements of each subject is recorded based on the activities he performs. These activities are described below. 
Activity labels describes name of activities. Every volunteers health data is measured against each such activity. There are six such activity labels. This could be understood as a factor with pairings number:activity E.g.  1:WALKING, 2:WALKING_UPSTAIRS and so on. 

4. Y data records a activity level as number. Each activity value maps to the corresponding Activity label factor. 
Y data for test volunteers has 2947 observations.
Y data for training volunteers has 7352 observations

In summary, X data contains data of various measurements per subject(30 in this case) undergoing a set of activity(6 in this case). This data is available for Test volunteers and Training volunteers separately.  


***how does script prepares a tidy data? ***

The script works with the source data as described below:

 1. Prepares a function that does following:
    * accepts  "test" or "train" as input 
    * Fetches X data  (uses: read.table)
    * Appropriately labels the X data set with descriptive variable names (uses: data from feature.txt)
    * Extracts mean and standard deviation for each measurement in X data (uses: grep)
    * Adds a index variable 'id' to X data (uses: mutate)
    * Adds a index variable 'id' to Y data (uses: mutate)
    * Renames Y's 'V2' col name to 'actlevel' (uses: rename)
    * Merges X data and Y data's 'actlevel' using Inner Join (uses: merge, by=id)
    * Renames subject data's 'V2' col name to 'subject' (uses: rename)
    * Adds a index variable 'id' to subject data (uses: mutate)
    * Merges X data and subject data's 'subject' column using Inner Join (uses: merge, by=id)
    * Adds a new variable 'activity' to X data (uses: mutate)
    * For each observation in X data, replace the value of 'activity' with corresponding factor text value of 'act level' in X data. (uses: mutate)
    * returns the tidier X data
    
 2. Prepares the test data by invoking: prepareData("test")
 3. Prepares the train data by invoking:  prepareData("train")
 4. Merges the training data returned from (2 & 3 above) using rbind() 
 5. Using the merged data set (in 4 above), create a second independent tidy data set, with average of each variable for each activity and each subject. (uses: groupby, summarize_each with function mean)
 6. The results data is available as variable tidy_data

***Setup***

1. Install package dplyr from cran repo by running command:
install.packages('dplyr', repos='http://cran.r-project.org')
Be patient, this may take few moments.

2. On your windows laptop, create a folder 'R' under c:
mkdir c:/R

3. Download run_analysis.R script into newly created "c:/R" directory
4. Download/Copy data source "UCI HAR Dataset.zip" in "c:/R" and unzip it.
Resultant data should be now available in: "C:\R\UCI HAR Dataset"
5. Script will be easily be modified to 'not to restrict' execution from "c:/R". For now, this is a minor limitation. 

***Script usage***

Execute run_analysis.R script from c:/R directory
Expected results are:

1. A Data table tidy_data with desired results (in memory)
2. Dimensions of resultant data and first three rows of results data
3. If running from R Studio, you will see additionally below messages 
> dim(tidy_data)
[1] 180  70
> head(tidy_data, n=3)
Source: local data frame [3 x 70]
Groups: activity
  activity subject       id actlevel tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z
1  WALKING       1 188.1474        1         0.2773308       -0.01738382        -0.1111481
2  WALKING       2 167.0000        1         0.2764266       -0.01859492        -0.1055004
3  WALKING       3 531.0000        1         0.2755675       -0.01717678        -0.1126749
Variables not shown: tBodyAcc-std()-X (dbl), tBodyAcc-std()-Y (dbl), tBodyAcc-std()-Z (dbl),
  tGravityAcc-mean()-X (dbl), tGravityAcc-mean()-Y (dbl), tGravityAcc-mean()-Z (dbl),
  tGravityAcc-std()-X (dbl), tGravityAcc-std()-Y (dbl), tGravityAcc-std()-Z (dbl),
  tBodyAccJerk-mean()-X (dbl) ...   
>
