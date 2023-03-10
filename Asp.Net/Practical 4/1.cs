// Exception Handling
using System;

namespace Practicals_1_4
{
    class Program
    {
        public static void Main(string[] args)
        {
            int a, b, c;
            Console.Write("Enter Number 1: ");
            a = int.Parse(Console.ReadLine());
            Console.Write("Enter Number 2: ");
            b = int.Parse(Console.ReadLine());
            try
            {
                c = a / b;
                Console.Write("Division is: " + c);
            }
            catch (DivideByZeroException e)
            {
                Console.Write("Division by zero is not possible");
            }
            Console.ReadKey();
        }
    }
}
