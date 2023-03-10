using System;
namespace Practicals_1_4
{
    internal class Program
    {
        class Student
        {
            string StudName, CourseName;
            int StudID, TotalMks;

            void GetData()
            {
                Console.WriteLine("Enter Student ID:");
                StudID = int.Parse(Console.ReadLine());

                Console.WriteLine("Enter Student Name:");
                StudName = Console.ReadLine();

                Console.WriteLine("Enter Course Name:");
                CourseName = Console.ReadLine();

                Console.WriteLine("Enter Total Marks:");
                TotalMks = int.Parse(Console.ReadLine());
            }

            void Display()
            {
                Console.WriteLine("Student ID : " + StudID);
                Console.WriteLine("Student Name : " + StudName);
                Console.WriteLine("Course Name : " + CourseName);
                Console.WriteLine("Total Marks : " + TotalMks);
            }

            static void Main(string[] args)
            {
                Student s = new Student();
                s.GetData();
                s.Display();

                Console.ReadLine();

            }
        }
    }
}
