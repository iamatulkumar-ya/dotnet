using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOPS_1
{


    class demo
    {
        public void show1()              // it initializes as public because it's lies in out of program class scope(and main metod lies on program)
        {
            Console.WriteLine("Hello i am show1");
        }
    }
    class Program
    {
        void show()                     // instance member because it's not a static and bidefault access modifier always a private
        {
            Console.WriteLine("Hello");
        }
        static void Main(string[] args)
        {
            Program ob = new Program();
            ob.show();

            demo ob1 = new demo();
            ob1.show1();
        }
    }
}
