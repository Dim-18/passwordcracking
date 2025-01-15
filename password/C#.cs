using System;

class Program
{
    static void Main()
    {
        Console.Write("Enter your password: ");
        string password = Console.ReadLine();

        Random random = new Random();
        string predictedPass = "";

        while (predictedPass != password)
        {
            predictedPass = "";
            foreach (char _ in password)
            {
                predictedPass += random.Next(0, 10).ToString();
            }
            Console.WriteLine(predictedPass);
        }

        Console.WriteLine($"Your password is: {predictedPass}");
    }
}
