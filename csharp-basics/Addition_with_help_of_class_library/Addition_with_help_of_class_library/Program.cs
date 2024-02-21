using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using addition;                        // we are using are own created namespace

// How to use own namespace?
// First create a library file and rebuild it....
// then open console or web application and add reference and browse created library file 
// and then use a name space which is defined in that library and now access these methods and classes 

namespace Addition_with_help_of_class_library
{
    class Program
    {
        static void Main(string[] args)
        {
            add a = new add();          // creating object of class add which is present in class library addition
            int g = a.sum(20, 36);
            Console.WriteLine(g);
        }
    }
}
