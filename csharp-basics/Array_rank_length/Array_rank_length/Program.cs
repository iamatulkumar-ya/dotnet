using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_rank_length
{
    class Program
    {
        static void Main(string[] args)
        {
            
            int[] a = new int[5];
            int[,] ab = new int[4, 3];
            int[, ,] abc = new int[4, 6, 3];


            Console.WriteLine("--------Rank gives dimension of array-------");
            Console.WriteLine();
            Console.WriteLine(a.Rank);
            Console.WriteLine(ab.Rank);
            Console.WriteLine(abc.Rank);

            Console.WriteLine("---------Lenght gives size of array--------");
            Console.WriteLine();
            Console.WriteLine(a.Length);
            Console.WriteLine(ab.Length);
            Console.WriteLine(abc.Length);
        }
    }
}
