using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Shape.Program;

namespace Shape
{
    internal class Program
    {
        static void Main(string[] args)
        {
            IShape circle = new Circle(5);
            Console.WriteLine($"Circle Area: {circle.CalculateArea()}");
            Console.WriteLine($"Circle Perimeter: {circle.CalculatePerimeter()}");

            IShape rectangle = new Rectangle(4, 5);
            Console.WriteLine($"Rectangle Area: {rectangle.CalculateArea()}");
            Console.WriteLine($"Rectangle Perimeter: {rectangle.CalculatePerimeter()}");

            IShape triangle = new Triangle(3, 4, 5);
            Console.WriteLine($"Triangle Area: {triangle.CalculateArea()}");
            Console.WriteLine($"Triangle Perimeter: {triangle.CalculatePerimeter()}");
        }

        public interface IShape 
        {
            double CalculateArea();
            double CalculatePerimeter();
        }
    }


    public class Circle : IShape
    {
        private double p_radius;

        public Circle(double radius)
        {
            p_radius = radius;
        }

        public double CalculateArea()
        {
            return Math.PI * p_radius * p_radius;
        }

        public double CalculatePerimeter()
        {
            return 2 * Math.PI * p_radius;
        }
    }
    public class Rectangle : IShape
    {
        private double p_width;
        private double p_height;

        public Rectangle(double width, double height)
        {
            p_width = width;
            p_height = height;
        }

        public double CalculateArea()
        {
            return p_width * p_height;
        }

        public double CalculatePerimeter()
        {
            return 2 * (p_width + p_height);
        }
    }

    public class Triangle : IShape
    {
        private double p_sideA;
        private double p_sideB;
        private double p_sideC;

        public Triangle(double sideA, double sideB, double sideC)
        {
            p_sideA = sideA;
            p_sideB = sideB;
            p_sideC = sideC;
        }

        public double CalculateArea()
        {
            double s = CalculatePerimeter() / 2;
            return Math.Sqrt(s * (s - p_sideA) * (s - p_sideB) * (s - p_sideC));
        }

        public double CalculatePerimeter()
        {
            return p_sideA + p_sideB + p_sideC;
        }
    }


}
