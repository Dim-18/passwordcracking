package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	var password string
	fmt.Print("Enter your password: ")
	fmt.Scanln(&password)

	rand.Seed(time.Now().UnixNano())
	var predictedPass string

	for predictedPass != password {
		predictedPass = ""
		for i := 0; i < len(password); i++ {
			predictedPass += fmt.Sprintf("%d", rand.Intn(10))
		}
		fmt.Println(predictedPass)
	}

	fmt.Printf("Your password is: %s\n", predictedPass)
}
