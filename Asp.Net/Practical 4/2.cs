//Inheritance
using System;

namespace Practicals_1_4
{
    internal class Program
    {
        public class Person
        {
            public string Name;
            public int Age;
        }

        public class Employee : Person
        {
            public float Salary;
            public float Bonus = 1000;
            public void Display()
            {
                Console.WriteLine("Employee Name: " + Name);
                Console.WriteLine("Employee Age: " + Age);
                Console.WriteLine("Employee Salary: " + Salary);
                Console.WriteLine("Employee Bonus: " + Bonus);
            }
        }
        public static void Main(string[] args)
        {
            Employee e1 = new Employee();
            e1.Name = "Ninad";
            e1.Age = 20;
            e1.Salary = 50000;
            e1.Display();
            
            Console.WriteLine("Employee Name: " + e1.Name);
            Console.WriteLine("Employee Age: " + e1.Age);
            Console.WriteLine("Employee Salary: " + e1.Salary);
            Console.WriteLine("Employee Bonus: " + e1.Bonus);
            Console.ReadKey();

        }
    }
}
