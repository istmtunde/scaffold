using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.IO;

namespace ConsoleApplication96

{

class Program

{

struct autok

{

public string tipus;

public string uzemenyag;

public int ar;

public int hossz;

public double fogyasztas;

public autok(string t, string u, int a, int h, double f)

{

tipus = t;

uzemenyag = u;

ar = a;

hossz = h;

fogyasztas = f;

}

public void kiir()

{

Console.WriteLine("{0,8} {1,4} {2,5}",tipus,fogyasztas,hossz);

}

public void kiir2()

{

Console.WriteLine("{0,8} {1,8} ", tipus, fogyasztas\*540);

}

}

static List&lt;autok&gt; beolvasas(string fajlnev)

{

List&lt;autok&gt; vissza = new List&lt;autok&gt;();

StreamReader sr = new StreamReader(fajlnev);

while (!sr.EndOfStream)

{

string\[\] sor = sr.ReadLine().Split(';');

autok ideiglenes = new autok(sor\[0\], sor\[1\], int.Parse(sor\[2\]), int.Parse(sor\[3\]), double.Parse(sor\[4\]));

vissza.Add(ideiglenes);

}

sr.Close();

return vissza;

}

static void fajlbairas(string fajlnev,string szoveg)

{

try

{

StreamWriter sw = new StreamWriter(fajlnev);

sw.WriteLine(szoveg);

sw.Flush();

sw.Close();

}

catch (Exception e)

{

Console.WriteLine(e.Message);

}

}

static void Main(string\[\] args)

{

List&lt;autok&gt; auto = beolvasas("skoda.txt");

// 2.1-es

Console.WriteLine("2.1-es feladat: A fájlban {0} darab sor van.",auto.Count);

Console.WriteLine("");

// 2.2-es

int osszeg = 0;

foreach (autok item in auto)

{

osszeg += item.ar;

}

Console.WriteLine("2.2-es feladat: Az össz érték: {0}Ft", osszeg);

Console.WriteLine("");

//2.3-as

Console.WriteLine("2.3-as feladat:");

Console.WriteLine("{0,8} {1,5} {2,6}", "Tipus", "fogy", "hossz");

foreach (autok item in auto)

{

item.kiir();

}

Console.WriteLine("");

//2.4-es

Console.WriteLine("2.4-es 100km-re vetített fogyasztás forintban.");

foreach (autok item in auto)

{

item.kiir2();

}

//2.5-os fájlba írás

string szoveg = "Az autók együttes értéke: " + osszeg + "Ft";

fajlbairas("autokerteke.txt", szoveg);

Console.ReadKey();

}

}

}