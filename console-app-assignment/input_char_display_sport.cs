using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;
using System.Runtime.Remoting.Lifetime;
using System.Text;
using System.Threading.Tasks;

namespace input_char_display_sport
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter character");
            char ch = Console.ReadLine()[0];

            switch (ch) {
                case 'c': 
                    { 
                        Console.WriteLine("Cricket");
                        break;
                    }

                case 'f': 
                    { 
                        Console.WriteLine("Football"); 
                        break;
                    }

                case 'h':
                    {
                        Console.WriteLine("Hockey");
                        break;
                    }
                case 't':
                    {
                        Console.WriteLine("Tennis");
                        break;
                    }

                case 'b':
                    {
                        Console.WriteLine("Badminton");
                        break;
                    }

                default:
                    {
                        Console.WriteLine("Invalid input,please try again");
                        break;
                    }
            }

            Console.ReadLine();

            
        }
    }
}
