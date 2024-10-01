using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace check_palindrome
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a string");
            string palin = Console.ReadLine();

            int len = palin.Length;
            int flag = 0;

            for (int i = 0; i < len ; i++) 
            {
                if (palin[i] != palin[len - i -1]) {

                    flag = 1;
                    break;
                }
                
            }

            if (flag == 0) { 
            
                Console.WriteLine("The given string IS A PALINDROME");
            }
            else {
                Console.WriteLine("The given stirng IS NOT A PALINDROME");

            }

            Console.ReadLine();
        }
    }
}
