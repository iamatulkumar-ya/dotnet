using System;


namespace Array_1                            // 1D array
{
    class Program
    {
        static void Main(string[] args)
        {
            
            int[] a=new int[5];   // declaration
            int[] b= new int[5]{10,20,30,40,50};   // declaration with initialization

            Console.WriteLine("Enter elements for array 'a'");
            for(int i =0;i<5;i++)
            {
                a[i]=int.Parse(Console.ReadLine());
            }

            Console.WriteLine("Entered elements of 'a' are=");
            foreach(int c in a)
            {
                Console.WriteLine(c);
            }

            Console.WriteLine(); Console.WriteLine(); Console.WriteLine();
            Console.WriteLine("Elements of array 'b' are");
            foreach(int d in b)
            {
                Console.WriteLine(d);

            }
        } 
    }
}
