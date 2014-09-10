rm(list = ls())

dog1_path <- "C:/Users/Uday/Desktop/Kaggle_AES_Resources/Dog_1"

library(R.matlab)
files <- list.files(pattern = "\\.(mat)$")
myList <- vector("list", length(files))

for (i in 1:100) {          
  myList[i] <- readMat(files[i], header = FALSE) 
}

df <- data.frame(t(myList[[1]][[1]]))
names(df) <- unlist(myList[[1]][[4]])
head(df)