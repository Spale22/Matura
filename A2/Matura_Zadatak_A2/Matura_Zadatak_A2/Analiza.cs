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
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT ime,prezime FROM Autor", conn);
                DataTable autori = new DataTable();
                if (adapter != null) 
                {
                    adapter.Fill(autori);
                    int i = 0;
                    foreach (DataRow row in autori.Rows)
                    {
                        comboBoxAutor.Items.Add(autori.Rows[i][0].ToString() + " " + autori.Rows[i][1].ToString());
                        i++;
                    }
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
            int godina = DateTime.Now.Year - Convert.ToInt32(numericUpDownGodine.Value);
            DataTable tabela = new DataTable();
            tabela.Columns.Add("Godina", Type.GetType("System.Int32"));
            tabela.Columns.Add("Broj", Type.GetType("System.Int32"));
            for (i = godina; i <= DateTime.Now.Year; i++) 
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(@"SELECT @godina AS Godina, COUNT(autorID) AS Broj
                                               FROM (SELECT Na_Citanju.knjigaID, autorID 
                                               FROM Na_Citanju 
                                               JOIN Napisali ON Na_Citanju.knjigaID = Napisali.knjigaID
                                               WHERE YEAR(datum_uzimanja) = @godina) AS A
                                               WHERE autorID = (SELECT autorID FROM Autor WHERE Autor.ime = @ime AND Autor.prezime = @prezime);", conn);
                comm.Parameters.AddWithValue("@godina", i);
                comm.Parameters.AddWithValue("@ime", autor_ime);
                comm.Parameters.AddWithValue("@prezime", autor_prezime);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read()) 
                {
                    DataRow row = tabela.NewRow();
                    row["Godina"] = reader[0];
                    row["Broj"] = reader[1];
                    tabela.Rows.Add(row);
                }
                reader.Dispose();
                conn.Close();
            }

            if (tabela != null) 
            {
                GV.DataSource = tabela;
                GV.Refresh();
                for (i = 0; i < GV.Rows.Count - 1; i++) 
                {
                    chart.Series[0].Points.AddXY(GV.Rows[i].Cells[0].Value.ToString(), GV.Rows[i].Cells[1].Value.ToString());
                }
            }
        }
    }
}
