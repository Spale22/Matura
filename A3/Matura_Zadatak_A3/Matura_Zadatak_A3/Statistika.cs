using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Matura_Zadatak_A3
{
    public partial class Statistika : Form
    {
        public Statistika()
        {
            InitializeComponent();
        }

        private void Statistika_FormClosing(object sender, FormClosingEventArgs e)
        {
            Projekat f = new Projekat();
            if (f == null)
            {
                f.Parent = this;
            }
            f.Show();
            this.Hide();
        }
    }
}
