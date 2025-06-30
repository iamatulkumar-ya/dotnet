using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TCS_struct
{

    struct passenger
    {
        public long mobilenumber;
        public float distance;

        public void displayifo()
        {
            Console.WriteLine("Mobile Number: {0}", mobilenumber);
            Console.WriteLine("Distance travelled: {0}", distance);
            Console.WriteLine("Travel Fare: {0}", (distance * 11));
            Console.WriteLine("Service Charge: {0}", (distance * 1.5));
            Console.WriteLine("Total Fare: {0}", (distance * 11) + (distance * 1.5));

        }

    }
    
    class TCSstructs
    {
        static void Main(string[] args)
        {
            int n;
            long[] mb = new long[1000];
            float[] di = new float[1000];
            Console.WriteLine("Enter the number of total Passengers:");
            n = int.Parse(Console.ReadLine());

            for (int i = 1; i <= n; i++)
            {
                Console.WriteLine("Information of Passenger: {0}", i);
                Console.WriteLine();
                Console.WriteLine("Enter the Mobile Number of Passenger: {0}", i);
                try
                {
                    mb[i] = long.Parse(Console.ReadLine());
                }
                catch(System.FormatException e)
                {
                    Console.WriteLine("NullReferenceException {0}", e);
                }
                Console.WriteLine();
                Console.WriteLine("Enter the Distance Traveled by Passenger: {0}", i);
                di[i] = float.Parse(Console.ReadLine());

            }
            
            passenger pas = new passenger();
            
            for (int i = 1; i <= n; i++)
            {
                pas.mobilenumber = mb[i];
                pas.distance = di[i];
                pas.displayifo();
                Console.WriteLine();
            }

            Console.ReadKey();
        }
    }
}
