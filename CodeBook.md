File avg_wearable_computing_data.txt is a text file containing average wearable computing data by subject and activity for the 66 mean() 
and std() columns provided in the Samsung Galaxy S smartphone wearable computing dataset available in this zip file:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More information describing the source dataset is available at:
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Information about the summary data in avg_wearable_computing_data.txt
=====================================================================

All columns are type numeric, except for Subject_Number, which is type integer, and Activity_Name, which is type factor.

All values columns (starting with column 3) are normalized and bounded within [-1,1].

Data Dictionary
---------------

Col Col
 #  Name and Description
--- -------------------------------------------------------------------------------------------------------------------------------------------

001 Subject_Number: Human subject identifier (1:30)  
002 Activity_Name: One of six activity names (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, and WALKING_UPSTAIRS)  
003 tBodyAcc-mean()-X_Avg: Average of the time domain body accelerometer mean values - X component  
004 tBodyAcc-mean()-Y_Avg: Average of the time domain body accelerometer mean values - Y component  
005 tBodyAcc-mean()-Z_Avg: Average of the time domain body accelerometer mean values - Z component  
006 tBodyAcc-std()-X_Avg: Average of the time domain body accelerometer standard deviation values - X component  
007 tBodyAcc-std()-Y_Avg: Average of the time domain body accelerometer standard deviation values - Y component  
008 tBodyAcc-std()-Z_Avg: Average of the time domain body accelerometer standard deviation values - Z component  
009 tGravityAcc-mean()-X_Avg: Average of the time domain gravity accelerometer mean values - X component  
010 tGravityAcc-mean()-Y_Avg: Average of the time domain gravity accelerometer mean values - Y component  
011 tGravityAcc-mean()-Z_Avg: Average of the time domain gravity accelerometer mean values - Z component  
012 tGravityAcc-std()-X_Avg: Average of the time domain gravity accelerometer standard deviation values - X component  
013 tGravityAcc-std()-Y_Avg: Average of the time domain gravity accelerometer standard deviation values - Y component  
014 tGravityAcc-std()-Z_Avg: Average of the time domain gravity accelerometer standard deviation values - Z component  
015 tBodyAccJerk-mean()-X_Avg: Average of the time domain body accelerometer jerk mean values - X component  
016 tBodyAccJerk-mean()-Y_Avg: Average of the time domain body accelerometer jerk mean values - Y component  
017 tBodyAccJerk-mean()-Z_Avg: Average of the time domain body accelerometer jerk mean values - Z component  
018 tBodyAccJerk-std()-X_Avg: Average of the time domain body accelerometer jerk standard deviation values - X component  
019 tBodyAccJerk-std()-Y_Avg: Average of the time domain body accelerometer jerk standard deviation values - Y component  
020 tBodyAccJerk-std()-Z_Avg: Average of the time domain body accelerometer jerk standard deviation values - Z component  
021 tBodyGyro-mean()-X_Avg: Average of the time domain body gyroscope mean values - X component  
022 tBodyGyro-mean()-Y_Avg: Average of the time domain body gyroscope mean values - Y component  
023 tBodyGyro-mean()-Z_Avg: Average of the time domain body gyroscope mean values - Z component  
024 tBodyGyro-std()-X_Avg: Average of the time domain body gyroscope standard deviation values - X component  
025 tBodyGyro-std()-Y_Avg: Average of the time domain body gyroscope standard deviation values - Y component  
026 tBodyGyro-std()-Z_Avg: Average of the time domain body gyroscope standard deviation values - Z component  
027 tBodyGyroJerk-mean()-X_Avg: Average of the time domain body gyroscope jerk mean values - X component  
028 tBodyGyroJerk-mean()-Y_Avg: Average of the time domain body gyroscope jerk mean values - Y component  
029 tBodyGyroJerk-mean()-Z_Avg: Average of the time domain body gyroscope jerk mean values - Z component  
030 tBodyGyroJerk-std()-X_Avg: Average of the time domain body gyroscope jerk standard deviation values - X component  
031 tBodyGyroJerk-std()-Y_Avg: Average of the time domain body gyroscope jerk standard deviation values - Y component  
032 tBodyGyroJerk-std()-Z_Avg: Average of the time domain body gyroscope jerk standard deviation values - Z component  
033 tBodyAccMag-mean()_Avg: Average of the time domain body accelerometer magnitude mean values  
034 tBodyAccMag-std()_Avg: Average of the time domain body accelerometer magnitude mean values  
035 tGravityAccMag-mean()_Avg: Average of the time domain gravity accelerometer magnitude mean values  
036 tGravityAccMag-std()_Avg: Average of the time domain gravity accelerometer magnitude standard deviation values  
037 tBodyAccJerkMag-mean()_Avg: Average of the time domain body accelerometer jerk magnitude mean values  
038 tBodyAccJerkMag-std()_Avg: Average of the time domain body accelerometer jerk magnitude standard deviation values  
039 tBodyGyroMag-mean()_Avg: Average of the time domain body gyroscope magnitude mean values  
040 tBodyGyroMag-std()_Avg: Average of the time domain body gyroscope magnitude standard deviation values  
041 tBodyGyroJerkMag-mean()_Avg: Average of the time domain body gyroscope jerk magnitude mean values  
042 tBodyGyroJerkMag-std()_Avg: Average of the time domain body gyroscope jerk magnitude standard deviation values  
043 fBodyAcc-mean()-X_Avg: Average of the frequency domain body accelerometer mean values - X component  
044 fBodyAcc-mean()-Y_Avg: Average of the frequency domain body accelerometer mean values - Y component  
045 fBodyAcc-mean()-Z_Avg: Average of the frequency domain body accelerometer mean values - Y component  
046 fBodyAcc-std()-X_Avg: Average of the frequency domain body accelerometer standard deviation values - X component  
047 fBodyAcc-std()-Y_Avg: Average of the frequency domain body accelerometer standard deviation values - Y component  
048 fBodyAcc-std()-Z_Avg: Average of the frequency domain body accelerometer standard deviation values - Z component  
049 fBodyAccJerk-mean()-X_Avg: Average of the frequency domain body accelerometer jerk mean values - X component  
050 fBodyAccJerk-mean()-Y_Avg: Average of the frequency domain body accelerometer jerk mean values - Y component  
051 fBodyAccJerk-mean()-Z_Avg: Average of the frequency domain body accelerometer jerk mean values - Z component  
052 fBodyAccJerk-std()-X_Avg: Average of the frequency domain body accelerometer jerk standard deviation values - X component  
053 fBodyAccJerk-std()-Y_Avg: Average of the frequency domain body accelerometer jerk standard deviation values - Y component  
054 fBodyAccJerk-std()-Z_Avg: Average of the frequency domain body accelerometer jerk standard deviation values - Z component  
055 fBodyGyro-mean()-X_Avg: Average of the frequency domain body gyroscope mean values - X component  
056 fBodyGyro-mean()-Y_Avg: Average of the frequency domain body gyroscope mean values - Y component  
057 fBodyGyro-mean()-Z_Avg: Average of the frequency domain body gyroscope mean values - Z component  
058 fBodyGyro-std()-X_Avg: Average of the frequency domain body gyroscope standard deviation values - X component  
059 fBodyGyro-std()-Y_Avg: Average of the frequency domain body gyroscope standard deviation values - Y component  
060 fBodyGyro-std()-Z_Avg: Average of the frequency domain body gyroscope standard deviation values - Z component  
061 fBodyAccMag-mean()_Avg: Average of the frequency domain body accelerometer magnitude mean values  
062 fBodyAccMag-std()_Avg: Average of the frequency domain body accelerometer magnitude standard deviation values  
063 fBodyBodyAccJerkMag-mean()_Avg: Average of the frequency domain body accelerometer jerk magnitude mean values  
064 fBodyBodyAccJerkMag-std()_Avg: Average of the frequency domain body accelerometer jerk magnitude standard devation values  
065 fBodyBodyGyroMag-mean()_Avg: Average of the frequency domain body gyroscope magnitude mean values  
066 fBodyBodyGyroMag-std()_Avg: Average of the frequency domain body gyroscope magnitude standard deviation values  
067 fBodyBodyGyroJerkMag-mean()_Avg: Average of the frequency domain body gyroscope jerk magnitude mean values  
068 fBodyBodyGyroJerkMag-std()_Avg: Average of the frequency domain body gyroscope jerk magnitude standard deviation values  