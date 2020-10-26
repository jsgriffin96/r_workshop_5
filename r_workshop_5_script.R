####Logical operators
#Equals
2==2

5==6

"Jarrod"=="Cool"

"Test"=="Test"

#Not equal to
5 != 9

"Grant" != "Grant"

#less than
512 < 1024

3 < 3
3 <= 3

#greater than
512 > 1024

4 > 4
4 >= 4
#AND/OR/NOT
TRUE & TRUE
TRUE & FALSE
FALSE & FALSE

TRUE | FALSE
TRUE | TRUE
FALSE | FALSE

!TRUE
!FALSE


####Control Statements
password <- "hunter2"

userInput <- "hunter2"

#if statements
if(password==userInput) {
  print("Correct Password!")
}


##if else statements
if(password==userInput) {
  print("Correct Password!")
} else if(password!=userInput){
  print("Wrong Password!")
}


##for loops
week <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")

for (day in week) {
  print(day)
}

##Combining both ideas
random <- sample(1:1000, 50)

for (number in random) {
  if(number>500){
    print(number)
  }
}


#### Creating fuctions
printTen <- function(item){
  for (i in 1:10) {
    print(item)
  }
}

printTen("Ok!")