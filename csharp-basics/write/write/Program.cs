using System;  //namespace  
using System.Text;


namespace write
{
    class firstprogram
    {
        static void Main()
        {
            int a = 20;
            show(a);
        }
        static void show(int x)
        {
            if(x==0)
            {
                show(x/2);
                show(x/2);
                Console.WriteLine("*");
            }

        }
    }
}
