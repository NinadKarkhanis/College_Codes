//Vowel or consonant
using System;
namespace Practicals_1_4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            char ch;
            Console.WriteLine("Enter Character:");
            ch = Convert.ToChar(Console.ReadLine());

            if (ch == 'A' || ch == 'a' || ch == 'E' || ch == 'e' || ch == 'I' || ch == 'i' || ch == 'O' || ch == 'o' || ch == 
              'U' || ch == 'u')
            {
                Console.WriteLine("It is a Vowel.");
            }
            else
            {
                Console.WriteLine("It is a Consonant.");
            }

         Console.ReadLine();
        }
    }
}
