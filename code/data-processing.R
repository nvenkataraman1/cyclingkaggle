train <- read.csv("../challenge_31_data/data_train.csv", 
                  stringsAsFactors = F, 
                  sep = ";")

test <- read.csv("../challenge_31_data/data_test.csv",
                 stringsAsFactors = F, 
                 sep = ";")

head(train)

str(train)

library(lubridate)

date.time <- ymd_hms(paste(train$Date,train$Time))

head(date.time)

train$date.time <- date.time

