using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Animal_properties
{
    
    public class Animal 
    { 
        public string Name {  get; set; }

        public virtual void Sound() 
        {
            Console.WriteLine("THIS IS ANIMAL CLASS");
        }
    }

    public class Dog : Animal
    { 
        
        public override void Sound()
        {
            Console.WriteLine("Bark Bark");
        }
    }

    public class Cat : Animal
    {
        public override void Sound() 
        { 
            Console.WriteLine("Purr Purr");
        }
    }

    public class Bird : Animal
    {
        public override void Sound() 
        {
            Console.WriteLine("Fly Fly");
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            Dog myDog = new Dog();
            myDog.Name = "Dog";
            Console.WriteLine("This is a " + myDog.Name);
            myDog.Sound();
            
            Cat myCat = new Cat();
            myCat.Name = "Cat";
            Console.WriteLine("This is a " + myCat.Name);
            myCat.Sound();
            
            Bird myBird = new Bird();
            myBird.Name = "Bird";
            Console.WriteLine("This is a " + myBird.Name);
            myBird.Sound();


        }

    }

}
