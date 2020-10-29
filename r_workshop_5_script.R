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

##while loops
randNum <- sample(1:100, 1)
while (randNum != 30) {
  print(randNum)
  randNum <- sample(1:100, 1)
}

##Combining both ideas
random <- sample(1:1000, 50)

for (number in random) {
  if(number>500){
    print(number)
  }
}


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








