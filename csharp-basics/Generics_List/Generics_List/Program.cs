using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Generics_List
{
    class Program
    {
        static void Main(string[] args)
        {

            var list = new List<string>();
            list.Add("1205413037");
            list.Add("Atul Kumar Yadav");

            foreach (string s in list)
            {
                Console.WriteLine(s);
            }
            list.Reverse();
            list.Remove("1205413037");
        }
    }
}
