using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Tax_calculation
{
    internal class Program
    {
        static void Main(string[] args)
        { 
            Console.WriteLine("Enter the amount");
            int amt = int.Parse(Console.ReadLine());
            int tax;

            if (amt < 10000)
            {
                tax = (amt * 5) / 100;
            }
            else if (amt >= 10000 & amt < 15000)
            {
                tax = ( amt * 75) / 10;
            }
            else if ( amt >= 15000 & amt < 20000)
            {
                tax = amt / 10;
            }
            else if ( amt >= 20000 & amt < 25000)
            {
                tax = ( amt * 125 ) / 10;
            }
            else
            {
                tax = (amt * 15) / 100;
            }

            Console.WriteLine("Total tax");
            Console.WriteLine(tax);

            Console.ReadLine();

        }
    }
}
 