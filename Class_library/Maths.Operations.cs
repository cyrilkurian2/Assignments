using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Maths.Operations
{
    public class ArithmeticOperation
    {
        public double Add(double a , double b) 
        {
            return a + b;
        }

        public double Sub(double a, double b) 
        {
            return (a - b);
        }

    }

    public class RelationalOperation
    {
        public bool GreatherThan(double a, double b)
        {
            if (a > b)
            {
                return true;
            }
            else {
                return false;
            }
        }
        public bool Equal(double a, double b) 
        {
            if (a == b)
            {
                return true;
            }
            else {
                return false;
            }
        }
    }
}
