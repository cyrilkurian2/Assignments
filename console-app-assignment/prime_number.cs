using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Prime_number
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number");
            int num = int.Parse(Console.ReadLine());

            for (int i = 2; i < num; i++) {
                if (num % i == 0) {
                    Console.WriteLine("The given number is NOT a prime");
                    Console.ReadLine();
                    return;
                }            
            }

            Console.WriteLine("The given number is a prime");
            Console.ReadLine();
        }
    }
}
