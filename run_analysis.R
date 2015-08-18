library(dplyr)  ## Use dplyr package

## Set directory paths off of the current working directory

datadirMain <- "./Samsung Data/UCI HAR Dataset/" 
datadirTest <- paste(datadirMain, "test/", sep="")
datadirTrain <- paste(datadirMain, "train/", sep="")

## Read in Features table, updating column names
dfFeatures <- read.table(paste(datadirMain, "features.txt", sep=""), blank.lines.skip=TRUE)
names(dfFeatures) <- c("Feature_Number", "Feature_Name")

## Read in Activity Labels table, updating column names
dfActivityLabels <- read.table(paste(datadirMain, "activity_labels.txt", sep=""), blank.lines.skip=TRUE)
names(dfActivityLabels) <- c("Label_Number", "Activity_Name")

## Read in Test Subject numbers table, updating column name
dfTestSubjects <- read.table(paste(datadirTest, "subject_test.txt", sep=""), blank.lines.skip=TRUE)
names(dfTestSubjects) <- "Subject_Number"

## Read in Training Subject numbers table, updating column name
dfTrainSubjects <- read.table(paste(datadirTrain, "subject_train.txt", sep=""), blank.lines.skip=TRUE)
names(dfTrainSubjects) <- "Subject_Number"

## Read in Test Labels numbers table, updating column name
dfTestLabels <- read.table(paste(datadirTest, "y_test.txt", sep=""), blank.lines.skip=TRUE)
names(dfTestLabels) <- "Label_Number"

## Read in Training Labels numbers table, updating column name
dfTrainLabels <- read.table(paste(datadirTrain, "y_train.txt", sep=""), blank.lines.skip=TRUE)
names(dfTrainLabels) <- "Label_Number"

## Read in Test data table, updating column names to be the same as those of the Feature_Name
## column of the Features table
dfTestData <- read.table(paste(datadirTest, "x_test.txt", sep=""), blank.lines.skip=TRUE)
names(dfTestData) <- dfFeatures$Feature_Name

## Read in Training data table, updating column names to be the same as those of the Feature_Name
## column of the Features table
dfTrainData <- read.table(paste(datadirTrain, "x_train.txt", sep=""), blank.lines.skip=TRUE)
names(dfTrainData) <- dfFeatures$Feature_Name

## Create a version of the Test data that contains Subject_Number and Label_Number
## identifying columns at the left
dfTestDataIdentified <- cbind(dfTestSubjects$Subject_Number, dfTestLabels$Label_Number, dfTestData)
names(dfTestDataIdentified)[1] <- "Subject_Number"
names(dfTestDataIdentified)[2] <- "Label_Number"

## Create a version of the Training data that contains Subject_Number and Label_Number
## identifying columns at the left
dfTrainDataIdentified <- cbind(dfTrainSubjects$Subject_Number, dfTrainLabels$Label_Number, dfTrainData)
names(dfTrainDataIdentified)[1] <- "Subject_Number"
names(dfTrainDataIdentified)[2] <- "Label_Number"

## "Merge" the Test data and the Training data together
dfSamsung <- rbind(dfTestDataIdentified, dfTrainDataIdentified)

## Create a version of the data containing only the Subject_Number, Label Number, and
## all the other columns that contain mean and std (standard deviation) data
##
## Note: columns like fBodyBodyGyroJerkMag-meanFreq() and angle(Y,gravityMean) are
## omitted
dfSamsungTargeted <-dfSamsung[, c("Subject_Number", "Label_Number", names(dfSamsung[, grep(".+([-]std[(][)]).*|.+([-]mean[(][)]).*", names(dfSamsung))]))]

## Create a version of the data that includes the Activity names
dfSamsungMerged = merge(dfSamsungTargeted, dfActivityLabels)

## Create a version of the data in which the Subject_Number column is followed by
## by the Activity_Name column, the Label_Number column is eliminated, and all the
## other columns are filled in to the right
dfSamsungTargetedActivity <- cbind(select(dfSamsungMerged, Subject_Number), select(dfSamsungMerged, Activity_Name),  select(dfSamsungMerged, -Subject_Number, -Label_Number, -Activity_Name))

## Create a separate data frame containing the mean value of each value column when
## grouped (and sorted by) Subject_Number and Activity_Name
dfTidy <- dfSamsungTargetedActivity %>% group_by(Subject_Number, Activity_Name) %>% 
  summarise_each(funs(mean)) %>% arrange(Subject_Number, Activity_Name)

## Append "_Avg" to each of the value column names
names(dfTidy)[3: ncol(dfTidy)] <- paste(names(dfTidy)[3: ncol(dfTidy)], "_Avg", sep="")

## Write tidy data to a text file for submission to Coursera
write.table(dfTidy, "avg_wearable_computing_data.txt", row.names = FALSE)





