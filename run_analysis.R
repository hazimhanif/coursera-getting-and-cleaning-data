#check the file, if exist then skip, otherwise download it from the given URL
fileName <- "dataset.zip"
if (!file.exists(fileName)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, fileName, method="curl")
}  

#check the folder, if exist, then skip, otherwise extract the downloaded file
folderName <- "dataset"
if (!file.exists(folderName)) { 
  unzip(fileName) 
}

#rename the folder to become dataset
file.rename("UCI HAR DATASET", "dataset")

#Start (1st Requirement): Merges the training and the test sets to create one data set.
#This can be done by merging the training and test set from different files and folders

#1.1 Merge training set

x_train <- read.csv("dataset/train/X_train.txt", sep="", header=FALSE)
y_train <- read.csv("dataset/train/Y_train.txt", sep="", header=FALSE)
subject_train <- read.csv("dataset/train/subject_train.txt", sep="", header=FALSE)
training_Set <- cbind(x_train,y_train,subject_train)

#1.2 Merge training test set
x_test <- read.csv("dataset/test/X_test.txt", sep="", header=FALSE)
y_test <- read.csv("dataset/test/Y_test.txt", sep="", header=FALSE)
subject_test <- read.csv("dataset/test/subject_test.txt", sep="", header=FALSE)
test_Set <- cbind(x_test,y_test,subject_test)

#1.3 Merge both training and test set
dataset <- rbind(training_Set,test_Set)

#end (1st Requirement)

#Start (2nd Requirement): Extracts only the measurements on the mean and standard deviation for each measurement.
#This can be done using several steps.

#2.1 Get label for the features
features <- read.csv("dataset/features.txt", sep = "", header = FALSE)
features$V2 <- as.character(features$V2)

#2.2 Add the new label for "activity" and "subjects"
features <- rbind(features, c(562,"activity"))
features <- rbind(features, c(563,"subject"))

#2.3 Rename colNames in dataset based on
#a) name in the "features" data 
#b) "-mean" to "Mean" 
#c) "-std" to "std"

names(dataset) <- features$V2
names(dataset) <- gsub('-mean', 'Mean', names(dataset))
names(dataset) <- gsub('-std', 'Std', names(dataset))

#2.4 Retrieve all data with mean, std, subject and activity from dataset

final_dataset <- dataset[,grepl("Mean|Std|activity|subject", names(dataset))]

#end (2nd Requirement)

#Start (3nd Requirement): Uses descriptive activity names to name the activities in the data set

#3.1 Get Activity Label from activity_labels.txt and 
activity_labels <- read.csv("dataset/activity_labels.txt", sep = "", header = FALSE)
activity_labels$V2 <- as.character(activity_labels$V2)

final_dataset$activity <- activity_labels[final_dataset$activity,2]
final_dataset$activity <- as.factor(final_dataset$activity)
final_dataset$subject <- as.factor(final_dataset$subject)
#end (3nd Requirement)

#Start 4th Requirement: Appropriately labels the data set with descriptive variable names.

#4.1 Remove Parenthesis nad -
names(final_dataset) <- gsub('[-()]', '', names(final_dataset))
#4.2 Make syntactically valid names
names(final_dataset) <- make.names(names(final_dataset))

#end 4th Requirement

#Start (5th Requirement): From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy <- aggregate(final_dataset, by=list(activity = final_dataset$activity, subject=final_dataset$subject), mean)
tidy[,90] = NULL
tidy[,89] = NULL
write.table(tidy, "tidy.txt", sep="\t")
#end (5th Requirement)
