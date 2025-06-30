using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_work
{
    class Program
    {
        static void Main(string[] args)
        {
            int n,temp;
            Console.WriteLine("Enter the size of array elements\n");
            n = int.Parse(Console.ReadLine());
            
            int[] arr = new int[n];
           

            Console.WriteLine("Enter array Elements\n");
            for(int i=0;i<n;i++)                                  // for input
            {
                arr[i] = int.Parse(Console.ReadLine());
            }

            Console.WriteLine("Entered array Elements are=\n");
            foreach(int a in arr)                                // for output
            {
                Console.WriteLine(a);
            }

            // Sorting
            int j = 1;
            while (j < n)
            {
            for (int i = 1; i < n; i++)
                {
                    if (arr[i-1] > arr[i])
                    {
                        temp = arr[i-1];
                        arr[i-1] = arr[i];
                        arr[i] = temp;
                    }
                }
                j += 1;
            }

            Console.WriteLine("Sorted Array Elements are=\n");

            foreach (int a in arr)                                // sorted output
            {
                Console.WriteLine(a);
            }

        }
    }
}
