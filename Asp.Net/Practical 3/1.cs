//)Book Details of 5 books
using System;

namespace Practicals_1_4
{
    internal class Program
    {
        int price;
        int pageno;
        string bookname;
        string authname;

        void getdata()
        {
            Console.WriteLine("Book name:");
            bookname = Console.ReadLine();
            Console.WriteLine("Author:");
            authname = Console.ReadLine();
            Console.WriteLine("Price:");
            price = int.Parse(Console.ReadLine());
            Console.WriteLine("Pages:");
            pageno = int.Parse(Console.ReadLine());
        }

        void showdata()
        {
            Console.WriteLine($"Price is {price}");
            Console.WriteLine($"Pages are {pageno}");
            Console.WriteLine($"Book name is {bookname}");
            Console.WriteLine($"Author is {authname}");
        }

        static void Main(string[] args)
        {
            Program[] b = new Program[5];

            for (int i = 0; i < 5; i++)
            {
                b[i] = new Program();
                b[i].getdata();
            }

            for (int j = 0; j < 5; j++)
            {
                b[j].showdata();
            }

            Console.ReadLine();
        }
    }
}
