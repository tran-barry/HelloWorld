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
            if (args[0] == "Cthulhu")
            {
                Console.WriteLine("Go away.");
            }
            else
            {
                Console.WriteLine("Hello {0}", args[0]);
            }
            return;
        }
    }
}
