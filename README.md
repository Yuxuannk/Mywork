# Mywork

First, I read all the data including the names for variables and activity labels and merge them to a comprehensive data set. 

Then, I find and delete those columns whose name include std or mean.

Then, I use the descriptive activity names to repalce the numbers for activity label.

Then, I calculate the mean of each variable for each subject and each activity using the aggregate function.

Then, to make the data set tidy, I change all the column names to be lowercase. And use the gtools package to sort the data frame, since the elements in the first row are character including numbers. We will sort these rows first by comparing their number then by comparing their character part, and both in ascending order.

Finally, I write this data frame in a txt file.
