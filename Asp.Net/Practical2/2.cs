//Pattern Program
using System;
namespace Practicals_1_4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Pattern 1");

            int i, j, rows, k = 1;
            Console.Write("Input number of rows : ");
            rows = Convert.ToInt32(Console.ReadLine());
            for (i = 1; i <= rows; i++)
            {
                for (j = 1; j <= i; j++)
                    Console.Write("{0} ", k++);
                Console.Write("\n");

            }
            Console.WriteLine("Pattern 2");
            int o, v, n, p, q;
            Console.Write("Input number of rows : ");
            n = Convert.ToInt32(Console.ReadLine());

            for (o = 1; o <= n; o++)
            {

                for (v = 1; v <= o; v++)
                {
                    if (v % 2 == 1)
                        Console.Write("1");
                    else
                        Console.Write("0");
                }
                Console.Write("\n");
            }

            Console.WriteLine("Pattern 3");

            int z, x, n1;


            Console.Write("Input number of rows for this pattern :");
            n1 = Convert.ToInt32(Console.ReadLine());
            for (z = 0; z < n1; z++)
            {
                for (x = 1; x <= n1 - z; x++)
                    Console.Write(" ");
                for (x = 1; x <= 2 * z - 1; x++)
                    Console.Write("*");
                Console.Write("\n");

            }
        Console.ReadLine();
        }

    }
}
