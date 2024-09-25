using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Largest_of_three_number
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter 3 numbers");
            int num1 = int.Parse(Console.ReadLine());
            int num2 = int.Parse(Console.ReadLine());
            int num3 = int.Parse(Console.ReadLine());

            Console.WriteLine("\n");
            Console.WriteLine("Largest Number is");
            if (num1 > num2 & num1 > num3)
            {
                Console.WriteLine(num1);
            }
            else if (num2 > num3)
            {
                Console.WriteLine(num2);
            }
            else
            {
                Console.WriteLine(num3);
            }

            Console.ReadLine();
        }

    }
}
