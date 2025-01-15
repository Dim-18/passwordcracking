import os
from random import randint

pas = input("enter the password: ")

keys = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]

pwg = ""
while pwg != pas:
    pwg = ""
    for i in range(len(pas)):
        guessPass = keys[randint(0, len(keys) - 1)]
        pwg = str(guessPass) + str(pwg)
    print(pwg)
    print("attacking... please wait!")
    os.system("cls")

print(f"The password is: {pwg}")
input("Press Enter to exit.")