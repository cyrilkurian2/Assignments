using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Different_shapes
{
    
    public class Shape 
    {
        public virtual void CalculateArea()
        {
            Console.WriteLine("This is SHAPE class");
        }
    }

    public class Circle : Shape 
    {
        public int Radius { get; set; }
        public override void CalculateArea() 
        {
            double Area = 3.14 * Radius * Radius;
            Console.WriteLine("Area of CIRCLE: " + Area);
        }    
    }

    public class Rectangle : Shape 
    {
        public int Length { get; set; }

        public int Breadth { get; set; }

        public override void CalculateArea()
        { 
            double Area = Length * Breadth;
            Console.WriteLine("Area of Rectangle: " + Area);
        }
    }

    public class Triangle : Shape 
    {
        public int Base_length { get; set; }
        public int Height { get; set; }
        public override void CalculateArea()
        {
            double Area = 0.5 * Base_length * Height;
            Console.WriteLine("Area of Triangle: " + Area);
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Circle c = new Circle();
            c.Radius = 4;
            c.CalculateArea();

            Rectangle r = new Rectangle();
            r.Length = 4;
            r.Breadth = 2;
            r.CalculateArea();

            Triangle t = new Triangle();
            t.Base_length = 4;
            t.Height = 4;
            t.CalculateArea();

        }
    }
}
 