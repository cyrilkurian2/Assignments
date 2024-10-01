using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Calculator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter two number");
            double number1 = int.Parse(Console.ReadLine());
            double number2 = int.Parse(Console.ReadLine());

            Cal c = new Cal();
            double Addition = c.Add(number1,number2);
            double Substraction = c.Sub(number1,number2);
            double Multiplication = c.Mul(number1,number2);
            double Division = c.Div(number1, number2);

            Console.WriteLine("Addition: " + Addition);
            Console.WriteLine("Substraction: " + Substraction);
            Console.WriteLine("Multiplication: " + Multiplication);
            Console.WriteLine("Division: " + Division);

        }
    }

    public class Cal
    {
        public double Add(double num1, double num2)
        { 
            return num1 + num2;
        }

        public double Sub(double num1, double num2) 
        {
            return num1 - num2;
        }

        public double Mul(double num1, double num2) 
        { 
            return num1 * num2;
        }

        public double Div(double num1, double num2)
        {
            return num1 / num2;
        }
    }
}

