import Foundation

print("Enter your password: ", terminator: "")
let password = readLine()!

var predictedPass = ""
var rng = SystemRandomNumberGenerator()

while predictedPass != password {
    predictedPass = ""
    for _ in password {
        predictedPass.append(String(Int.random(in: 0...9)))
    }
    print(predictedPass)
}

print("Your password is: \(predictedPass)")