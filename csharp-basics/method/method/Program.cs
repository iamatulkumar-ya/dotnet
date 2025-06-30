using System;

namespace method
{
    class Program
    {
        
        static void Main(string[] args)
        {
            int i=10;
            Console.WriteLine("Value of i before calling show and show1 is=" + i);
            Program p = new Program();

            Console.WriteLine(); Console.WriteLine();

            p.Show(i);                    // Call by value            
            Console.WriteLine("Value of i after calling show is=" + i);  // call by value answer=10,10

            Console.WriteLine(); Console.WriteLine();

            p.Show1(ref i);               // Call by reference
            Console.WriteLine("Value of i after calling show1 is=" + i);   // call by reference asnwer=10,100

            Console.WriteLine(); Console.WriteLine();

            int a;
            p.show2(out a);
            Console.WriteLine("Value of a(no initialization) after calling show2="+a);

        }

        protected void Show(int i)   
        {
            i = 100;
        }

        protected void Show1(ref int i)
        {
            i = 100;
        }

        protected void show2(out int a)
        {
            a=200;
        }
    }
}
