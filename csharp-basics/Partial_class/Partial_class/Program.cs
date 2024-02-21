using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Partial_class
{

    partial class demo    // partial divides the classes but at run time it creates one instance for differetn classes having same name
    {
        int a = 5;            // a is private
    }

    partial class demo
    {
        public void show()
        {
            Console.WriteLine(a);          // we can't use a without partial class concept deu to its protection level private
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            demo d = new demo();
            d.show();
        }
    }
}
