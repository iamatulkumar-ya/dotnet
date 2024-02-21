using System;


namespace Array_2                   // 2D array
{
    class Program
    {
        static void Main(string[] args)
        {
            
            int[,] ab = new int[3, 2];  // 3 row and 2 column............6 elements declaration only
            int[,] bc = new int[3, 2] { { 0, 1 }, { 2, 3 }, { 4, 5 } };   // initialization and declaration

            Console.WriteLine("Enter the elements of 2D array 'ab'");
            for (int i = 0; i < 3; i++) 
            {
                for(int j=0;j<2;j++)
                {
                    ab[i, j] = int.Parse(Console.ReadLine());
                }
            }
            Console.WriteLine();
            Console.WriteLine("Entered elements of array 'ab' are=");
            foreach(int c in ab)
            {
                Console.WriteLine(c);
            }

            Console.WriteLine(); Console.WriteLine(); Console.WriteLine();

            Console.WriteLine("Elements of array 'bc' are=");
            foreach(int d in bc)
            {
                Console.WriteLine(d);
            }

        }
    }
}
