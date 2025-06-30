using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_Length
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] a = new int[10];
            Console.WriteLine("Enter array elements");

            for(int i=0;i<a.Length;i++)       // Lenght takes size of a
            {
                a[i] = int.Parse(Console.ReadLine());
            }

            Console.WriteLine();
            Console.WriteLine("Entered array elements are");
            foreach(int c in a)
            {
                Console.WriteLine(c);
            }
        }
    }
}
