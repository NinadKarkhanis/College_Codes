//Constructor Overloading 
using System;
namespace Practicals_1_4
{
    internal class Program
    {
        public Program()
        {
            Console.WriteLine("Default Constructor");
        }
        public Program(int a)
        {
            Console.WriteLine("Constructor with 1 parameter");
        }
        public Program(int a, int b)
        {
            Console.WriteLine("Constructor with 2 parameters");
        }
        public Program(int a, int b, int c)
        {
            Console.WriteLine("Constructor with 3 parameters");
        }
        public static void Main(string[] args)
        {
            Program p1 = new Program();
            Program p2 = new Program(1);
            Program p3 = new Program(1, 2);
            Program p4 = new Program(1, 2, 3);
            Console.ReadKey();
        }

    }
}
