// Create an application to demonstrate string operations.

using System;
namespace Practicals_1_4
  internal class Program
    {
        static void Main(string[] args)
        { 
            string str1 = "Ninad";
            string str2 = "Karkhanis";
            string str3 = "Ninad";

            Console.WriteLine("string 1: " + str1);
            Console.WriteLine("string 1: " + str2);

            // get length of str
            int length = str1.Length;
            Console.WriteLine("Length of string 1: " + length);

            // join two strings
            string joinedString = string.Concat(str1, str2);
            Console.WriteLine("Joined string: " + joinedString);

            // compare str1 and str2
            Boolean result1 = str1.Equals(str2);
            Console.WriteLine("string str1 and str2 are equal: " + result1);

            //compare str1 and str3
            Boolean result2 = str1.Equals(str3);
            Console.WriteLine("string str1 and str3 are equal: " + result2);

            //string substring
            string substring = str2.Substring(7);
            Console.WriteLine("Substring from index 7: " + substring);


            Console.ReadLine();
    }
    }
}
