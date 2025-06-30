using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace inheritance      // it's a mechanism of extending the functionality of a class by defining new class,
                          //  which inherit functionality of another class add some own functionality........ 
{

    class parent
    {
       protected int n=10;        //  or we can write public int n=10
        public void show()
        {
            Console.WriteLine("Hello......It's Parent Class");
            Console.WriteLine(n);
        }

    }
    
   class child:parent        // here child inherits the property of parent class
    {
        public void show1()
        {
            Console.WriteLine("\nHello......it's Child Class");
            Console.WriteLine(n);         // if protected defines before  method or variable. so only it's child class can access it
        }
    }
    class Mainc
    {
        static void Main(string[] args)
        {
            child ob = new child();
            ob.show1();
            ob.show();
        }
    }
}
