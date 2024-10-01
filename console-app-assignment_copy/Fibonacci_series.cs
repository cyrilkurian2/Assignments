using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fibonacci_series
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number");
            int limit = int.Parse(Console.ReadLine());

            int first = 0;
            int second = 1;

            Console.WriteLine(0);
            Console.WriteLine(1);   

            for (int i = 0; i < limit; i++) { 
                int sum = first + second;
                Console.WriteLine(sum);
                first = second;
                second = sum;
            }

            Console.ReadLine();
        }
    }
}
