using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Matura_Zadatak_A2
{
    public partial class Analiza : Form
    {
        SqlConnection conn = new SqlConnection("Data Source=192.168.0.20;Initial Catalog=A2;User ID=SA;Password=sp@sic123.");

        public Analiza()
        {
            InitializeComponent();

            try 
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("SELCET ime,prezime FROM Autor", conn);
                DataTable autori = new DataTable();
                adapter.Fill(autori);
                int i=0;
                foreach (DataRow row in autori.Rows) 
                {
                    comboBoxAutor.Items.Add(autori.Rows[i][0].ToString() + " " + autori.Rows[i][1].ToString());
                    i++;
                }
            }

            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }

            finally
            {
                conn.Close();
            }
        }

        private void btnIzadji_Click(object sender, EventArgs e)
        {
            Autor f = new Autor();
            if (f == null)
            {
                f.Parent = this;
            }
            f.Show();
            this.Hide();
        }

        private void btnPrikazi_Click(object sender, EventArgs e)
        {
            string autor = comboBoxAutor.SelectedItem.ToString();
            string[] a = autor.Split(' ');
            int i = 0; 
            string autor_ime="";
            string autor_prezime="";
            foreach (string x in a) 
            {
                if (i == 0)
                    autor_ime = a[i];
                else if (i == 1)
                    autor_prezime = a[i];
                else
                    autor_prezime += " " + a[i];
                i++;
            }
            int godina = Convert.ToInt32(numericUpDownGodine.Value);
            SqlDataAdapter adapter = new SqlDataAdapter(@"
                SELECT YEAR(Na_Citanju.datum_uzimanja) AS Godina,
                (SELECT COUNT(*) FROM 
                Na_Citanju JOIN Napisali ON Na_Citanju.knjigaID = Napisali.knjigaID 
                JOIN Autor ON Napisali.autorID = Autor.autorID WHERE Autor.ime = 'Autor5' AND Autor.prezime = 'Autor5') AS Broj
                FROM Na_Citanju JOIN Napisali ON Na_Citanju.knjigaID = Napisali.knjigaID 
                JOIN Autor ON Napisali.autorID = Autor.autorID
                WHERE YEAR(Na_Citanju.datum_uzimanja) BETWEEN 2012 AND YEAR(GETDATE()) AND Autor.ime = 'Autor5' AND Autor.prezime = 'Autor5' 
                GROUP BY YEAR(Na_Citanju.datum_uzimanja);", conn);
            DataTable tabela = new DataTable();
            adapter.Fill(tabela);
            GV.DataSource = tabela;
            GV.Refresh();
            for (i = 0; i < tabela.Rows.Count; i++) 
            {
                chart.Series[0].Points.AddXY(Convert.ToInt32(tabela.Rows[0].ToString()), Convert.ToInt32(tabela.Rows[1].ToString()));
            }
                
        }
    }
}
