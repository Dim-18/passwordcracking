import java.util.Random;
import java.util.Scanner;

public class Java {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter your password: ");
        String password = scanner.nextLine();

        Random random = new Random();
        StringBuilder predictedPass = new StringBuilder();

        while (!predictedPass.toString().equals(password)) {
            predictedPass.setLength(0);  // clear the StringBuilder
            for (int i = 0; i < password.length(); i++) {
                predictedPass.append((char) ('0' + random.nextInt(10)));
            }
            System.out.println(predictedPass);
        }

        System.out.println("Your password is: " + predictedPass);
    }
}
