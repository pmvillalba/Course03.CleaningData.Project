library(plyr)
library(dataMaid)

# 0. Read files
# Set data directory
dir.data <- getwd()
# Load the list of features names
cFeatures <- read.table(file.path(dir.data,"features.txt"), stringsAsFactors = FALSE)
cFeatures <- cFeatures[,2]
# Parenthesis are not valid characters for column names.
cFeatures <- gsub("[()]", "", cFeatures)
# Read train data and name columns using the above features list. Then, read activities and subjects and merge train data.
dtTrainX <- read.table(file.path(dir.data,"X_train.txt"), col.names=cFeatures)
dtTrainAct <- read.table(file.path(dir.data,"y_train.txt"), col.names=c("IdActivity"))
dtTrainSub <- read.table(file.path(dir.data,"subject_train.txt"), col.names=c("IdSubject"))
dtTrain <- cbind(dtTrainSub,dtTrainAct,dtTrainX)
# Do the same for the test set.
dtTestX <- read.table(file.path(dir.data,"X_test.txt"), col.names=cFeatures)
dtTestAct <- read.table(file.path(dir.data,"y_test.txt"), col.names=c("IdActivity"))
dtTestSub <- read.table(file.path(dir.data,"subject_test.txt"), col.names=c("IdSubject"))
dtTest <- cbind(dtTestSub,dtTestAct,dtTestX)


# 1. Merge data sets
# Merge the training and the test sets to create one data set.
dtFinal <- rbind(dtTrain,dtTest)


# 2. Extract measurements
# Some characters in column names were invalid and they have been transformed into valid ones, so we must get the "new" colum names.
cNewFeatures <- names(dtFinal)
# Extract only the measurements on the mean and standard deviation for each measurement.
cNewFeatures <- cNewFeatures[grepl("mean|std",cNewFeatures)]
dtFinalFilt <- dtFinal[,c("IdSubject","IdActivity",cNewFeatures)]


# 3. Naming activities
# Use descriptive activity names to name the activities in the data set.
dtActDesc <- read.table(file.path(dir.data, "activity_labels.txt"),col.names = c("IdActivity","Activity"))
dtFinalFilt <- merge(dtFinalFilt, dtActDesc, by="IdActivity")


# 4. Label data
# Label the data set with descriptive variable names.
cFeaturesFilt <- names(dtFinalFilt)
# Prefix "t" means that data are in "Time" domain.
cFeaturesFilt <- gsub("^t", "Time", cFeaturesFilt)
# Prefix "f" means that data are in "frequency" domain.
cFeaturesFilt <- gsub("^f", "Frequency", cFeaturesFilt)
# "Acc" stands for "Accelerometer".
cFeaturesFilt <- gsub("Acc", "Accelerometer", cFeaturesFilt)
# "Gyro" means "Gyroscope".
cFeaturesFilt <- gsub("Gyro", "Gyroscope", cFeaturesFilt)
# "Mag" means "Magnitude".
cFeaturesFilt <- gsub("Mag", "Magnitude", cFeaturesFilt)
# Some more clean up ...
cFeaturesFilt <- gsub("\\.mean", "Mean", cFeaturesFilt)
cFeaturesFilt <- gsub("\\.std", "StandardDeviation", cFeaturesFilt)
cFeaturesFilt <- gsub("BodyBody", "Body", cFeaturesFilt)
# Assign new column names
names(dtFinalFilt) <- cFeaturesFilt


# 5. Final dataset
# From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
dtTidy <- ddply(dtFinalFilt,.(IdSubject,IdActivity,Activity),numcolwise(mean))
# Export tidy data as text.
write.table(dtTidy,file = "tidy_data.txt", row.names = FALSE)
