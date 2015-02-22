library(dplyr)

#  set working directory
rootdir ="c:/r/" # The directory with R script
wdir <- paste(rootdir,"UCI HAR Dataset", sep="")
setwd(wdir)

#merge Data
prepareData <- function(dataType){
 
  
  #set all files to be used
  if(dataType == "test"){
    subjectfile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt" 
    yfile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt" 
    Xfile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt" # The directory with test data
  }else if(dataType == "train"){
    subjectfile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt" 
    yfile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt" 
    Xfile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt" 
  }
  
  actlabelfile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"
  featureFile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/features.txt"

  
  #read X data
  Xdata <- read.table(Xfile,stringsAsFactors=FALSE)
  
  #4. Appropriately labels the data set with descriptive variable names. 
  # read feature list
  featureFile ="c:/r/UCI HAR Dataset/UCI HAR Dataset/features.txt"
  featurelist <- read.table(featureFile,stringsAsFactors=FALSE)
 
  #loop thru each feature and assign it to each column of X data
  for (i in 1:nrow(featurelist)){
    value <- (featurelist[i,][[2]])

    #rename X cols
    names(Xdata)[i] <- value
  }
  
  # remove duplicates if any
  Xdata <- Xdata[ !duplicated(names(Xdata)) ]
  
  #2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  Xdata <- Xdata[,grep("(mean|std)\\(\\)",colnames(Xdata))]
 
  # Begin Merging all data files for selected Data type (train/test)
  len <- nrow(Xdata)
  
  # create a index variable to allow merge by. into related data tables 
  Xdata <- mutate(Xdata, id = seq(1,len,length=len))
  #print(head(select(Xdata,id)))
  
  #get Y data (related to activity lable)
  ydata <- read.table(yfile)
  #rename activity level column before merging
  ydata <- rename(ydata, actlevel = V1)
  #create index variable to allow merge by.
  len <- nrow(ydata)
  ydata <- mutate(ydata, id = seq(1,len,length=len))
  #print(head(select(ydata, id, actlevel)))
  

  # use inner join  - combine y-data (activity level) for each record of x-data
  Xdata2 <- merge(ydata, Xdata, by ="id")
  #print(head(select(Xdata2,id, actlevel)))
 
  
  #now read subject data
  subjectdata <- read.table(subjectfile)
  #rename column to indicate subject/volanteer
  subjectdata <- rename(subjectdata, subject=V1)
  #create index variable to allow merge by.
  len <- nrow(subjectdata)
  subjectdata <- mutate(subjectdata, id = seq(1,len,length=len))

  #inner join  - merge into X data by.id
  Xdata3 <- merge(Xdata2, subjectdata, by ="id")
  #print(head(select(Xdata3,id, actlevel,subject)))
  

  #3. Uses descriptive activity names to name the activities in the data set
  #now get activity type for each row
  activitylist <- read.table(actlabelfile,stringsAsFactors=FALSE)
  actVect <- as.character()
  #loop thru each activity and create a vector   
  for (i in 1:nrow(activitylist)){
    value <- (activitylist[i,][[2]])
    #create string vector
    actVect <- c(actVect, value)
  }
 
  #create a factor for activity labels  
  actVelL <- sample(actVect, size=6, replace=TRUE)
  actVectfac = factor(actVect, levels=actVect)
    
  #associate activity level with x data , add new variable as activity
  Xdata3 <- mutate(Xdata3, activity = actVectfac[actlevel])
  #print(head(select(Xdata3,id, actlevel,subject,activity)))
 
 
  #data is ready, now return it
  return (Xdata3)
}

#prepare test data
testData <- prepareData("test")
#dim(testData)
    
#prepare training data
trainData <- prepareData("train")
#dim(trainData)

#1. Merges the training and the test sets to create one data set.
alldata <- rbind(testData,trainData)
#dim(alldata)

#5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
tidy_data <- alldata %>% group_by(activity,subject) %>% summarise_each(funs(mean))
dim(tidy_data)
head(tidy_data, n=3)