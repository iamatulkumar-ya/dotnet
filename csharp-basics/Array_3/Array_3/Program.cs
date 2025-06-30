using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_3
{
    class Program
    {
        static void Main(string[] args)
        {
            int[, ,] abc = new int[2, 3, 2]; // 2 block.....3 row......2 columns; declaration only
            int[, ,] xyz = new int[2, 2, 2] { { { 0, 1 }, { 2, 3 } }, { { 4, 5 }, { 6, 7 } } };

            Console.WriteLine("Pre initialize array(xyz) elements are=");
            foreach(int a in xyz)
            {
                Console.WriteLine(a);
            }


        }
    }
}
