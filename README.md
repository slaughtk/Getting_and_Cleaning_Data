run_analysis.R is an R script intended to be run in the R software application environment.

It takes as its input the Samsung Galaxy S smartphone wearable computing
data set zip file (including documentation) available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20data set.zip

It assumes this data set has been downloaded and unzipped in its zipped file structure just 
underneath the working directory containing run_analysis.R.  For example, if the working directory
is C:/Users/Owner/Documents/R, the Samsung Data folder should be reachable at
C:/Users/Owner/Documents/R/Samsung Data.

Further information about the source data is available at:
http://archive.ics.uci.edu/ml/data sets/Human+Activity+Recognition+Using+Smartphones

The output of running run_analysis.R is the tidy data set written to file
avg_wearable_computing_data.txt using write.table.  The description of this data set
is available in CodeBook.md.

run_analysis.R processes the input data set according to the following steps:

1. Read in the Features table, updating the column names to Feature_Number and Feature_Name

2. Read in the Activity Labels table, updating the column names to Label_Number and Activity_Name

3. Read in the Test Subject numbers table, updating the column name to Subject Number

4. Read in the Training Subject numbers table, updating the column name to Subject_Number

5. Read in the Test Labels numbers table, updating the column name to Label_Number

6. Read in the Training Labels numbers table, updating the column name to Label_Number

7. Read in the Test data table, updating the column names to be the same as those of the row elements
   of the Feature_Name column of the Features table

8. Read in the Training data table, updating the column names to be the same as those of the row elements
   of the Feature_Name column of the Features table

9. Create a version of the Test data that contains Subject_Number and Label_Number
   identifying columns (from the Test Subject and Test Labels numbers tables) at the left

10. Create a version of the Training data that contains Subject_Number and Label_Number
   identifying columns (from the Training Subject and Training Labels numbers tables) at the left

11. Combine the Test data and the Training data into a single data frame

12. Create a version of the combined data containing only the Subject_Number, Label Number, and
    all the other 66 columns that contain mean and std (standard deviation) data
	
    Note: columns like fBodyBodyGyroJerkMag-meanFreq() and angle(Y,gravityMean) are
          omitted -- they are not part of the 66 value column set that are processed
          by run_analysis.R		  

13. Create a version of the combined, subsetted data that includes the Activity names 
    (in addition to the Label numbers) by merging with the Activity Labels table

14. Create a version of the data resulting from step 13 in which the Subject_Number column
    is followed by the Activity_Name column, the Label_Number column is eliminated, and all the
    other (value) columns are filled in to the right

15. Based on the data resulting from step 14 create a new data frame containing the mean value of 
    each value column when grouped (and sorted by) Subject_Number and Activity_Name

16. Append "_Avg" to each of the value column names in the data frame created in step 15

17. Write this tidy data set to text file avg_wearable_computing_data.txt 
    for submission to Coursera
