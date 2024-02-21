using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace method_overriding
{
    class baseclass
    {
        public virtual void show()
        {
            Console.WriteLine("Hello i am show in public virtual show() method");
        }
    }

    class childclass:baseclass
    {
        public override void show()
        {
            base.show();
            Console.WriteLine("hello baseclass");

        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            childclass cc = new childclass();
            cc.show();
        }
    }
}
