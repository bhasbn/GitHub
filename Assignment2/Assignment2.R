

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

