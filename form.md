using System;

using System.Collections.Generic;

using System.ComponentModel;

using System.Data;

using System.Drawing;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows.Forms;

using System.IO;

namespace WindowsFormsApplication23

{

public partial class Form1 : Form

{

struct autok

{

public string tipus;

public string uzemanyag;

public int ar;

public int hossz;

public double fogyasztas;

public autok(string tip, string uz, int a, int h, double atl)

{

tipus = tip;

uzemanyag = uz;

ar = a;

hossz = h;

fogyasztas = atl;

}

}

static List&lt;autok&gt; Beolvas(string fajlneve)

{

List&lt;autok&gt; vissza = new List&lt;autok&gt;();

StreamReader sr = new StreamReader(fajlneve);

while (!sr.EndOfStream)

{

string\[\] sor = sr.ReadLine().Split(';');

autok ideiglenes = new autok(sor\[0\], sor\[1\], int.Parse(sor\[2\]), int.Parse(sor\[3\]), double.Parse(sor\[4\]));

vissza.Add(ideiglenes);

}

sr.Close();

return vissza;

}

public Form1()

{

InitializeComponent();

}

private void Form1_Load(object sender, EventArgs e)

{

List&lt;autok&gt; auto = Beolvas("skoda.txt");

tablaFrissit(auto);

}

public void iras()

{

string valaszt = comboBox1.SelectedItem.ToString();

label5.Text = valaszt;

int fogy = int.Parse(textBox1.Text);

List&lt;autok&gt; auto = Beolvas("skoda.txt");

List&lt;autok&gt; szurt = new List&lt;autok&gt;();

foreach (autok item in auto)

{

if (valaszt == item.uzemanyag && item.fogyasztas > fogy) szurt.Add(item);

}

tablaFrissit(szurt);

}

private void pictureBox1_Click(object sender, EventArgs e)

{

Application.Exit();

}

void tablaFrissit(List&lt;autok&gt; szurt)

{

dataGridView1.Rows.Clear();

foreach (autok item in szurt)

dataGridView1.Rows.Add

(

item.tipus,

item.uzemanyag,

item.hossz,

item.fogyasztas,

item.ar

);

}

private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)

{

iras();

}

private void textBox1_TextChanged_1(object sender, EventArgs e)

{

iras();

}

private void button1_Click_1(object sender, EventArgs e)

{

comboBox1.Text = "";

List&lt;autok&gt; auto = Beolvas("skoda.txt");

tablaFrissit(auto);

}

private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)

{

DataGridViewRow row = dataGridView1.Rows\[e.RowIndex\];

label5.Text = Convert.ToString(row.Cells\[4\].Value);

}

}

}