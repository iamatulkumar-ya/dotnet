using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jagged_Array_Work                 // 1D Jagged array..........size taken by user
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine();
            Console.WriteLine("Enter the size of 1D jagged array:");
            int a = int.Parse(Console.ReadLine());                       // variable a takes size of jagged array 
            
            int[][] jd = new int[a][];

            Console.WriteLine("Enter the elements of 1D jagged array:");
            for (int i = 0; i < a; i++)
            {           
                Console.WriteLine("Enter the size of jd{0}:",i);
                int s = int.Parse(Console.ReadLine());                             // int s takes size of internal arrays
                Console.WriteLine("Enter the elements of jd{0}:", i);

                for(int j=0;j<s;j++)
                {
                    jd[i][j] = int.Parse(Console.ReadLine());

                }
              
            }


            Console.WriteLine();
            Console.WriteLine("Elements of Enterd jagged array are:");
            foreach(int[] ab in jd)
            {
                foreach(int x in ab)
                {
                    Console.WriteLine(x);
                }
            }

            Console.ReadLine();
                
        }
    }
}
