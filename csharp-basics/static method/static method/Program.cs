using System;
using System.Collections.Generic;


namespace static_method
{
    class main
    {
        static void Main()
        {
            int a = 5, b = 9;
            add(a, b);
        } 
        static void add(int x,int y)    // static means does't need to create a object,in main method, we can call the method directly 
        {
            int z=x+y;
            Console.WriteLine("sum of two numbers is="+z);
        }
    }
}
