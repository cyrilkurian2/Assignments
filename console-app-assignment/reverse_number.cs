using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Reverse_a_number
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number");
            int num = int.Parse(Console.ReadLine());

            int rev = 0, temp;
            while (num > 0) {
                temp = num % 10;
                rev = rev * 10 + temp;
                num = num / 10;
            }

            Console.WriteLine("\n");
            Console.WriteLine("Reversed Number");
            Console.WriteLine(rev);

            Console.ReadLine();
        }
    }
}
