using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Animal
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dog d = new Dog();
            d.Name = "Noddy";
            d.Sound = "bark bark bark";
            d.MakeSound();

            Cat c = new Cat();
            c.Name = "Snow Bell";
            c.Sound = "Meow Meow Meow";
            c.MakeSound();

            Bird b = new Bird();
            b.Name = "Micky";
            b.Sound = "Fly Fly Fly";
            b.MakeSound();
        }
    }
    abstract class Animal
    {
        public abstract string Name { get; set; }

        public abstract string Sound { get; set; }

        public abstract void MakeSound();
    }

    class Dog : Animal
    {
        public override string Name { get; set; }
        public override string Sound { get; set; }
        public override void MakeSound()
        {
            Console.WriteLine("Dog Named " + this.Name + " Makes This Sound: " + this.Sound);
        }
    }

    class Cat : Animal
    {
        public override string Name { get; set; }
        public override string Sound { get; set; }
        public override void MakeSound()
        {
            Console.WriteLine("Cat Named " + this.Name + " This Sound: " + this.Sound);
        }
    }

    class Bird : Animal
    {
        public override string Name { get; set; }
        public override string Sound { get; set; }
        public override void MakeSound()
        {
            Console.WriteLine("Bird Named " + this.Name + " Makes This Sound: " + this.Sound );
        }
    }

}
