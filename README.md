# Mywork

First, read all the data including the names for variables and activity labels and merge them to a comprehensive data set. 

Then, find and extract those columns whose name include std or mean.

Then, use the descriptive activity names to repalce the numbers for activity label.

Then, calculate the mean of each variable for each subject and each activity using the aggregate function.

Then, to make the data set tidy, change all the column names to be lowercase. And use the gtools package to sort the data frame, since the elements in the first row are character including numbers. We will sort these rows first by comparing their number then by comparing their character part, and both in ascending order.

Finally, write this data frame in a txt file and output this data frame.

Call dataset<-run_analysis 
You will get the tidy data set in two copys. One is the "dataset" as a data frame, and one is a "myresult.txt" as a txt file in the original work directory.
