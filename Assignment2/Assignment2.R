
# 1. What should be the output of the following Script?

#Assign numeric (double) to 'v' dataset
v<-c(2,5.5,6)

#Checking the dataset format
mode(v)
class(v)
is.numeric(v)
is.double(v)


#Assign numeric (integer) to 't' dataset
t<-c(8,3,4)

#Checking the dataset format
mode(v)
class(v)
is.numeric(v)

#Printing remainder of the first vector 'v' with the second dataset 't'
print(v%/%t)

# 2. You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,........xx_25.xlsx in a dir.
# Write a program to extract the contents of each excel sheet and make it one df.

#install package xlsx
install.packages("rJava")
library(rJava)
install.packages("xlsx")
library("xlsx")

setwd("C:\Users\Bhaskar Shetty.AP\Desktop\xx_1-to-xx_25filefolder")
df.files = list.files(pattern = "*.xlsx")

df <- lapply(df.files, function(x) read.xlsx(x, sheetIndex = 1))

for (i in 1:25) {
  data <- rbind(data, read.xlsx(i, sheetIndex = 1))
}

# 3. If the above 25 files were csv files, what would be your script to read?

# Get the files names
files = list.files(pattern="*.csv")

# First apply read.csv, then rbind

for (i in 1:25) {
  myfiles = do.call(rbind, lapply(files, function(x) read.csv(x, stringsAsFactors = FALSE)))
}
