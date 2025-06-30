using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jagged_Array
{
    class Program
    {
        static void Main(string[] args)
        {
            int[][] a=new int[2][]; // 2 defines the block        1D array
            a[0] = new int[3] { 100, 200, 300 };
            a[1] = new int[2] { 1000, 2000 };

            Console.WriteLine("Elements of jagged array are=");
            Console.WriteLine();

            for(int i=0;i<a.Length;i++)
            {
                for(int j=0;j<a[i].Length;j++)
                {
                    Console.WriteLine(a[i][j]);
                }
            }

            //foreach (int[] x in a)
            //{
            //    foreach (int y in x)
            //    {
            //        Console.WriteLine(y);

            //    }
            //}

             int[][,] ab=new int[2][,];      // 2D array
             ab[0] = new int[2,3] { {55, 66, 77},{22,33,44} };
             ab[1] = new int[2, 2] { { 12, 21 }, { 13, 31 } };
             Console.WriteLine("Elements of 2D jagged array");
             Console.WriteLine();

            foreach(int[,] x in ab)
            {
                foreach(int y in x)
                {
                    Console.WriteLine(y);
                }
            }
        }
    }
}
