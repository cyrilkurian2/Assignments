using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Prime_numbers_below_100
{
    internal class Program
    {
        static void Main(string[] args)
        { 
            int num = 100;
            int flag;

            for (int i = 0; i < num; i++)
            {
                flag=0;
                for (int j = 2; j < i; j++)
                {
                    if (i % j == 0)
                    {
                        flag = 1;
                        break;
                        
                    }
                }

                if(flag == 1)
                {
                    continue;
                }

                Console.WriteLine(i);
            }
            Console.ReadLine();
        }
    }
}