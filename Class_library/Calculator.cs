using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Maths.Operations;

namespace Calculator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double a = 2; double b = 1; double c = 1;
            ArithmeticOperation op = new ArithmeticOperation(); 
            Console.WriteLine("Addition: " + op.Add(a, b));
            Console.WriteLine("Substraction: " + op.Sub(a, b));

            RelationalOperation ro = new RelationalOperation();
            Console.WriteLine("Greater than: " + ro.GreatherThan(a, c));
            Console.WriteLine("Equal to: " + ro.Equal(b, c));
        }
    }
}
