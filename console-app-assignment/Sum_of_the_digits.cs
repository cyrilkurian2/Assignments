using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sum_of_the_digits
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number");
            int num = int.Parse(Console.ReadLine());
            int temp, sum = 0;

            while (num > 0)
            {
                temp = num % 10;
                sum = sum + temp;
                num = num / 10;
            }

            Console.WriteLine("\n");
            Console.WriteLine("Sum of digits = " + sum );
            Console.ReadLine();
        }
    }
}
