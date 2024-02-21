using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_GetLength
{
    class Program
    {
        static void Main(string[] args)
        {
            int[,] ab = new int[4, 3];
            Console.WriteLine("Enter 2D array elements");

            for (int i = 0; i<ab.GetLength(0); i++)        // we can't use 'Length' because Length takes 4 here
            {
                for(int j=0;j<ab.GetLength(1);j++)          // we can't use 'Length' because Length takes 3 here
                {
                    ab[i, j] = int.Parse(Console.ReadLine());
                }
            }

            Console.WriteLine();
            Console.WriteLine("Entered array elements are=");
            Console.WriteLine();
            foreach(int x in ab)
            {
                
                Console.WriteLine(x);
            }
        }
    }
}
