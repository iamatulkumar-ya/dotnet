using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace menuswitch
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("________MENU________");
            Console.WriteLine("Enter 1 for insertion");
            Console.WriteLine("Enter 2 for deletion");
            Console.WriteLine("Enter 3 for udation");
            Console.WriteLine("Enter 4 for display a data");
            int m = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter y for continue otherwise press n");
            char c = char.Parse(Console.ReadLine());

            switch(m)
            {
                case(1):
                break;

            }

        }
    }
}
