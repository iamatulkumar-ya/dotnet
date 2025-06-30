using System;


namespace Array
{
    class Program
    {
        static void Main()
        {

            int[] a= new int[5];     // initialization of array having name "a" and size "5"
            for(int i=0;i<5;i++)
            {
                Console.WriteLine("Enter the array elements");
                a[i]=int.Parse(Console.ReadLine());
                Console.WriteLine();
            }

            Console.WriteLine("Entered array elements are-------");
            foreach(int b in a)                                      // foreach is used for display purpose only
            {
                Console.WriteLine(b);
            }

        }
    }
}
