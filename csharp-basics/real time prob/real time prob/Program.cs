using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace real_time_prob
{
    class Room
    {
        string n, c;
        int p;
        public virtual void getinfo()
        {
            Console.WriteLine("Enter the name");
            n = Console.ReadLine();
            Console.WriteLine("Enter the category");
            c = Console.ReadLine();
            Console.WriteLine("Enter the price");
            p = int.Parse(Console.ReadLine());
        }
        public virtual void display()
        {
            Console.WriteLine("Name={0}", n);
            Console.WriteLine("Category={0}", c);
            Console.WriteLine("price={0}", p);
       }
    }

    class A:Room
    {
        public override void getinfo()
        {
            base.getinfo();
        }
        public override void display()
        {
            base.display();
        }
    }

    class B : Room
    {
        public override void getinfo()
        {
            base.getinfo();
        }
        public override void display()
        {
            base.display();
        }
    }


    class C : Room
    {
        public override void getinfo()
        {
            base.getinfo();
        }
        public override void display()
        {
            base.display();
        }
    }

    class Human : Room
    {
        string n,c;
        int p;

        public override void getinfo()
        {
           
            Console.WriteLine("Enter the name");
            n = Console.ReadLine();
            Console.WriteLine("Enter the category");
            c = Console.ReadLine();
            Console.WriteLine("Enter the age");
            p = int.Parse(Console.ReadLine());
        }
        public override void display()
        {
            Console.WriteLine("Name={0}", n);
            Console.WriteLine("Category={0}", c);
            Console.WriteLine("age={0}", p);
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            A ob1 = new A();
            B ob2 = new B();
            C ob3 = new C();
            Human ob4 = new Human();
            Console.WriteLine("Enter Laptop information");
            ob1.getinfo(); Console.WriteLine("\n");
            ob1.display();
            Console.WriteLine("\nEnter Fan information");
            ob2.getinfo(); Console.WriteLine("\n");
            ob2.display();
            Console.WriteLine("\nEnter Table information");
            ob3.getinfo(); Console.WriteLine("\n");
            ob3.display();
            Console.WriteLine("\nEnter Human information");
            ob4.getinfo(); Console.WriteLine("\n");
            ob4.display();
        }
    }
}
