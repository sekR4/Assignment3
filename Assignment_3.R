setwd("D:/Dropbox/01_Studium2015/Data Science/WD")


outcome <- read.csv("rprog_data/outcome-of-care-measures.csv", na.strings = "Not Available", stringsAsFactors = FALSE)
# Why did we have to read the columns as characters?

head(outcome)
ncol(outcome) 
names(outcome)
str(outcome)

#outcome[, 11] <- as.numeric(outcome[, 11])

# histogram of the 30-day death rates from heart attack
hist(outcome[,11])

# So? over 600 times a death rate of 16?

hospital <- read.csv("rprog_data/hospital-data.csv", colClasses = "character")
       
head(hospital)
ncol(hospital)

#outcomes <- c("heart attack"=11, "heart failure"=17, "pneumonia"=23)


best <- function(state, outcome) {
        ## Read outcome data
        data.all <- read.csv("rprog_data/outcome-of-care-measures.csv", 
                            na.strings = "Not Available", stringsAsFactors = FALSE)
        
        ## Check that state and outcome are valid
        all.states <- data.all$State
        outcomes <- c("heart attack", "heart failure", "pneumonia")
        
        if (!(state %in% all.states)) {
                stop(print("invalid state"))
        }
        
        else if (!(outcome %in% outcomes)) {
                stop(print("invalid outcome"))
        }
        
        ## Return hospital name in that state with lowest 30-day death
        ## rate
        
        sub.data <- split(data.all, data.all$State)
        sub.data.o <- 
        
        
        
}
