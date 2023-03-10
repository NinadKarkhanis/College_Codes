/*
Create simple application to perform following operations
 Finding factorial Value
 Money Conversion
Temperature Conversion
Calculate distance
*/

using System;
namespace Practicals_1_4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Choose Operation:\nA for Factorial for any number\nB for Money 
            Conversion\nC for Find distance between 2 points\nD for Temperature Conversion  ");
            string operation = Console.ReadLine();
            switch (operation)
            {
                case "A":
                    {
                        int i, fact = 1, number;
                        Console.WriteLine("Enter Number:");
                        number = int.Parse(Console.ReadLine());
                        for (i = 1; i <= number; i++)
                        {
                            fact = fact * i;
                        }
                        Console.WriteLine("Factorial of " + number + " is :" + fact);
                    }

                    break;
                case "B":
                    {
                        int rs;
                        double dollars;
                        Console.WriteLine("Enter Number To Convert into Dollars:");
                        rs = int.Parse(Console.ReadLine());
                        dollars = rs * 0.012;
                        Console.WriteLine(+rs + " Rupees is " + dollars + " Dollars.");
                        break;

                    }
                case "C":
                    {
                        Console.WriteLine("Enter Value of x1");
                        int x1 = int.Parse(Console.ReadLine());
                        Console.WriteLine("Enter Value of x2");
                        int x2 = int.Parse(Console.ReadLine());
                        Console.WriteLine("Enter Value of y1");
                        int y1 = int.Parse(Console.ReadLine());
                        Console.WriteLine("Enter Value of y2");
                        int y2 = int.Parse(Console.ReadLine());

                        double distance = Math.Sqrt((Math.Pow(x1 - x2, 2) + Math.Pow(y1 - y2, 2)));

                        Console.WriteLine("Distance Between 2 Points: " + distance);

                        break;
                    }
                case "D":
                    {
                        double fahrenheit, celsius;

                        Console.WriteLine("Enter celsius:");
                        celsius = double.Parse(Console.ReadLine());

                        fahrenheit = (celsius * 9) / 5 + 32;
                        Console.WriteLine("Fahrenheit: " + fahrenheit);
                        break;

                    }


            }
            Console.ReadLine();
        }
    }
}
