##Learned how to properly format date and time from https://www.programiz.com/python-programming/datetime/current-datetime
from datetime import date, datetime, time

today = datetime.today()
MonthDayYear = today.strftime("%m/%d/%y")

print("Lets see how old you are in Seconds! Today's date is ", MonthDayYear)
userAge = int(input("How old are you?"))

 
userSecondsAge = ((((userAge * 365) * 24) * 60) * 60)


print("You are: ", userSecondsAge, "Seconds Old.")