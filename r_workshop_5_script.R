####Logical operators
#Equals
2==2

"Jarrod"=="Cool"

#Not equal to
5 != 9

"Grant" != "Grant"

#less than
512 < 1024

3 < 3

3 <= 3

#greater than
512 > 1024

4 >= 4

#AND/OR/NOT
#AND (Both conditions need to be true)
TRUE & TRUE
4>3 & 5>4
TRUE & FALSE
FALSE & FALSE
#OR (one condition needs to be true)
TRUE | FALSE
TRUE | TRUE
FALSE | FALSE
#NOT
!TRUE
!FALSE


####Control Structures
password <- "dog"
userInput <- "dog"


##if else statements
if(password == userInput) {
  print("Correct Password!")
} else if (password != userInput) {
  print("Wrong Password!")
} else{
  print("Error")
}

##for loops //use when you want to look through all elements
weeklySales <- c(70, 74, 67, 75, 80, 79, 75)
sum <- 0                    #output
for (sale in weeklySales) { #sequence
  print(sale)               #body
  sum <- sum + sale         #body
}


##Combining both ideas
randomNums <- sample(1:1000, 50)
count <- 0
for (number in randomNums) {
  if (number > 500) {
    count <- count + 1
    print(number)
  }
}
count


#### Creating functions
printTen <- function(item){
  for (i in 1:10) {
    print(item)
  }
}
printTen("Ok!")

#function as arguments
printTen(mean(weeklySales))

#nested functions
printTenAtPosition <- function(numbers, i){
  printTen(numbers[i])
}

printTenAtPosition(weeklySales, 2)

#### Apply 
#apply (input is dataframe or matrix; output: vector,list, or array)
carsOutput <- apply(mtcars, 2, sum) #MARGIN 1=rows, 2=col
class(carsOutput)
colSums(mtcars)

apply(mtcars, 1, sum)
rowSums(mtcars)

squaredCars <- apply(mtcars, 2, function(x) x^2)


#lapply (input: data frame or matrix; output:list)
cities <- c('POMONA', 'CHINO hills', 'Los ANGELES')
lowerCities <- lapply(cities, tolower)

lapply(mtcars, function(x) x+2)
lapply(mtcars$mpg, function(x) x+2)


#sapply (input: list, vector, or data frame/output:vector or matrix)
lowerCities <- sapply(cities, tolower)

sapply(mtcars, function(x) x+2)
sapply(mtcars$mpg, function(x) x+2)


#tapply
head(mtcars)
tapply(mtcars$mpg, mtcars$cyl, mean)

tapply(mtcars$hp, mtcars$cyl, mean)

library(tidyverse)
mtcars %>% 
  group_by(cyl) %>%
  summarise(avgMPG=mean(mpg))



