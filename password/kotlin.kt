import kotlin.random.Random

fun main() {
    print("Enter your password: ")
    val password = readLine()!!

    var predictedPass = ""

    while (predictedPass != password) {
        predictedPass = ""
        for (i in password.indices) {
            predictedPass += Random.nextInt(0, 10)
        }
        println(predictedPass)
    }

    println("Your password is: $predictedPass")
}
