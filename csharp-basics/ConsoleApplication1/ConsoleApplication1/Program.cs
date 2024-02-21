using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{

    class demo
    {
      public  void show()
        {
            Console.WriteLine("Hello i am show no return type no parameter");
        }
         
      public  void show1(int a)
        {
            Console.WriteLine("Hello i am show1 no return type with parameter having value" + a);
        }
        
      public  int show2()
        {
            int b = 2;
            return b;
        }
      public  int show3(int c)
        {
            return c;
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            demo ob = new demo();
            ob.show();
            ob.show1(1);
            int d= ob.show2();
            Console.WriteLine("Hello i am show2 with return type no parameter having value" + d);
            int e = ob.show3(3);
            Console.WriteLine("Hello i am show3 with return type with parameter having value" + e);


         }
    }
}
