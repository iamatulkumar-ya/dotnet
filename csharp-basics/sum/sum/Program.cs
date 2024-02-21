using System;

namespace sum
{
    class Sumc:Sumc2
    {
       public static void Main()
        {

            add();
            add2();
                                     // due to static keyword, does't need to create object //
        }
       //static void add()     // static forced to no obje t creation //
       //{
       //    int a = 12, b = 3;
       //    int c = a + b;
       //    Console.WriteLine(c);

       //}
    }
    public class Sumc2:Sumc3
    {
        public static void add()     // static forced to no object creation //
        {
            int a = 12, b = 3;
            int c = a + b;
            Console.WriteLine(c);
        }
    }

    private class Sumc3
    {
         public static void add2()
        {
            int a = 5, b = 8;
            int c = a + b;
            Console.WriteLine(c);
        }
    }
   
}
