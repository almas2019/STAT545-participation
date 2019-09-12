number*2
number <- 5+2 ##Order of lines don't matter, but order in which lines are run, the line above is bad practice
number*2
times <- c(60,40,33,15,20,55,35)
times/60
mean(times)
sqrt(times)
range(times)
times<30
times == 20
times != 20
#This is a comment
times >20 & times<50
times < 20 | times>50
i <- which(times<30) # This is an inline comment
sum(times<30)
a <- all(times<30)
#Subsetting
times[3]
times[-3]
times[c(2,4)]
times[c(4,2)]
times[1:5]
times[3,5]
times[times<30]
times[times>50] <- 50 #This is one way how you replace your objects in vectors
times[8] <- NA #Assign the 8th Entry to NA
times
mean(times,na.rm = TRUE)
mean(times,0,TRUE)
mean(na.rm = TRUE,x=times)
?mean
mtcars
str(mtcars)
names(mtcars)
mtcars$mpg
