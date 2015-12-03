using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args[0] == "Gary")
                Console.WriteLine("Go away");
            else
                Console.WriteLine("Hello Mr./Mrs. " + args[0]);
        }
    }
}
