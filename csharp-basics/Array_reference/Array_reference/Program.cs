using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_reference
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] arr1 = new int[2] { 5, 25 };
            int[] arr2 = arr1;

            Console.WriteLine();Console.WriteLine();
            Console.WriteLine("Elements of array arr1 is:");
            Console.WriteLine("Element in index 0 is\t" + arr1[0]);
            Console.WriteLine("Element in index 1 is\t" + arr1[1]);

            Console.WriteLine(); Console.WriteLine();

            Console.WriteLine("Elements of array arr2 is:");
            Console.WriteLine("Element in index 0 is\t" + arr2[0]);
            Console.WriteLine("Element in index 1 is\t" + arr2[1]);

            arr2[0] = 50;
            arr2[1] = 100;

            Console.WriteLine(); Console.WriteLine();
            Console.WriteLine("After assigning the values into arr2 array, the value of arr2 is:");
            Console.WriteLine("Element in index 0 is\t" + arr2[0]);
            Console.WriteLine("Element in index 1 is\t" + arr2[1]);

            Console.WriteLine();  Console.WriteLine();

            Console.WriteLine("Affecting values of arr1 is,by changing in arr1 is:");
            Console.WriteLine("Element in index 0 is\t" + arr1[0]);
            Console.WriteLine("Element in index 1 is\t" + arr1[1]);
        }
    }
}
