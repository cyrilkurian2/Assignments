using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Print_50_odd_numbers
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int num = 0;

            while (num <= 50) {
                if (num % 2 != 0)
                {
                    Console.WriteLine(num);
                }
                num++;
            }

            Console.ReadLine();
        }
    }
}
