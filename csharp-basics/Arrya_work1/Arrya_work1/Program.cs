using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Arrya_work1                              // 3D array size taking by user
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine(); Console.WriteLine();
            Console.WriteLine("Enter the Size of Globes:");
            int a = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the Size of Rows:");
            int b = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the Size of Columns:");
            int c = int.Parse(Console.ReadLine());

            int[, ,] abc = new int[a, b, c];

            Console.WriteLine("Enter the elements of a 3D array");
            for (int i = 0; i < abc.GetLength(0); i++)                 // Gets the Length of Globe
            {
                for (int j = 0; j < abc.GetLength(1); j++)                 // Gets the Length of Row
                {
                    for (int k = 0; k < abc.GetLength(2); k++)                 // Gets the Length of Column
                    {
                        abc[i,j,k] = int.Parse(Console.ReadLine());
                    }
                }
            }

            Console.WriteLine();
            Console.WriteLine("Elements of 3D array printed by 'foreach loop' are:");
            foreach(int x in abc)
            {
                Console.WriteLine(x);
            }

            Console.WriteLine();
            Console.WriteLine("Elements of 3D array printed by 'for loop' are:");
            
            for (int i = 0; i < abc.GetLength(0); i++)     // Gets the Length of Globe
            {
                for (int j = 0; j < abc.GetLength(1); j++)    // Gets the Length of Row
                {
                    for (int k = 0; k < abc.GetLength(2); k++)    // Get the Length of Column
                    {
                        Console.WriteLine(abc[i,j,k]);
                    }
                }
            }
            Console.ReadLine();
        }
    }
}
