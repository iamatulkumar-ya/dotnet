using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace method_overloading   // more than one mr=ethid in a same class with "same name" but different in signature;
                               // signature: numbers and types of parameters OR order of parameter
{

    class same
    {
        public void add(int x,int y)
        {
            Console.WriteLine(x + y);
        }
                                                          // same method name but different number of parameters
        public void add(int x, int y, int z)
        {
            Console.WriteLine(x + y+z);
        }

        public void mul(int x, int y,int z)
        {
            Console.WriteLine(x*y*z);
        }
                                                         
        public int mul(int x, int y)
        {
            return (x * y);
        }

        public void add(int x, float y)
        {
            Console.WriteLine(x + y);
        }
                                                        // different order of parameter in void add(int x, float y) and void add(float x, int y)
        public void add(float x, int y)
        {
            Console.WriteLine(x + y);
        }
    }
    class MainC
    {
        static void Main(string[] args)
        {
            same ob = new same();                                 // creating object of class "same"
            ob.add(6, 9);                                        // call void add(int x,int y) method
            ob.add(6, 9, 98);                                   // call void add(int x,int y,int z) method
            ob.mul(6, 5, 8);                                   // call void mul(int x,int y,int z) method 
            Console.WriteLine(ob.mul(6, 9));                  // call int mul(int x,int y) method
            ob.add(6, 9.89f);                                // call void add(int x,float y) method
            ob.add(6.0876878f, 0);                          // call void add(float x,int y) method
                                                           // float takes 6 zero after decimal(.)

          
        }
    }

}
 