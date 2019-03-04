#Load Packages
library(dplyr)
#1. reads in train and test data, merges subject, X, and Y datasets for both test and train folders
xtest <- "Documents/coursera/datascience/UCI HAR Dataset/test/X_test.txt"
ytest <- "Documents/coursera/datascience/UCI HAR Dataset/test/y_test.txt"
xtrain <- "Documents/coursera/datascience/UCI HAR Dataset/train/X_train.txt"
ytrain <- "Documents/coursera/datascience/UCI HAR Dataset/train/y_train.txt"
TrainingSet <- read.table(xtrain)
TrainingLabels <- read.table(ytrain)
subjectTraining <- read.table("Documents/coursera/datascience/UCI HAR Dataset/train/subject_train.txt")
subjectTest <-  read.table("Documents/coursera/datascience/UCI HAR Dataset/test/subject_test.txt")
TestSet <- read.table(xtest)
TestLabels <- read.table(ytest)
#binds the training columns
trendata <- cbind(TrainingSet, TrainingLabels, subjectTraining)
#binds the test columns
tstdata <- cbind(TestSet, TestLabels, subjectTest)
features <- read.table("Documents/coursera/datascience/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
ft <- features$V2
names <- c(ft, "LabelofActivity", "subject")
#binds all into 1 dataset
data <- rbind(trendata, tstdata)
colnames(data) <- names
#removes duplicate columns
fulldata <- data[, !duplicated(colnames(data))]

#2. extracts all mean and standard deviation data
meanstd <- c(grep("LabelofActivity|subject", names(fulldata)),
             grep("mean()", names(fulldata), fixed = TRUE),
             grep("std()", names(fulldata), fixed = TRUE))
meanstddata <- select(fulldata, meanstd)

#3. changes all activity names
activites <- read.table("Documents/coursera/datascience/UCI HAR Dataset/activity_labels.txt")
activity_names <- activites[,2]
meanstddata <- mutate(meanstddata, LabelofActivity = activity_names[LabelofActivity])

#4. gives data descriptive and tidy title
colnames(meanstddata) <- gsub("()", "", colnames(meanstddata), fixed=TRUE)
colnames(meanstddata) <- gsub("-", "", colnames(meanstddata))
colnames(meanstddata) <- gsub("Acc", "Accelerometer", colnames(meanstddata))
colnames(meanstddata) <- gsub("Gyro", "Gyroscope", colnames(meanstddata))
colnames(meanstddata) <- gsub("std", "StandardDeviation", colnames(meanstddata))
colnames(meanstddata) <- gsub("mean", "Mean", colnames(meanstddata))
colnames(meanstddata) <- gsub("Mag", "Magnitude", colnames(meanstddata))
colnames(meanstddata) <- gsub("^f", "FrequencyDomain", colnames(meanstddata))
colnames(meanstddata) <- gsub("^t", "TimeDomain", colnames(meanstddata))

#5 takes average of each variable for each activity and subject
ag<- aggregate(.~LabelofActivity+subject, meanstddata, mean, na.rm=TRUE)
#writes into a second file
write.csv(ag, file = "tidydata.csv", row.names = FALSE)
print(names(ag))


