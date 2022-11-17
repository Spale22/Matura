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

namespace Matura_Zadatak_A7
{
    public partial class Grafik : Form
    {

        SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=A7;User ID=SA;Password=sp@sic123.");

        public Grafik()
        {
            InitializeComponent();
        }

        private void Grafik_Load(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(@"SELECT predmet FROM Predmet;", conn);
                if (adapter != null) 
                {
                    DataTable predmeti = new DataTable();
                    string predmet = "";
                    adapter.Fill(predmeti);
                    foreach (DataRow row in predmeti.Rows) 
                    {
                        predmet = row[0].ToString();
                        checkedListBoxPredmeti.Items.Add(predmet,CheckState.Unchecked);
                    }

                    graph.Series[0].LegendText = (DateTime.Now.Year - 3).ToString();
                    graph.Series[0].LegendText = (DateTime.Now.Year - 2).ToString();
                    graph.Series[0].LegendText = (DateTime.Now.Year - 1).ToString();
                }
            }
           
            catch (Exception error)
            {
                MessageBox.Show(error.Message, "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            finally 
            {
                conn.Close();
            }
        }

        private void btnPrikazi_Click(object sender, EventArgs e)
        {
            try 
            {
                conn.Open();
                GV.DataSource = null;
                GV.Refresh();
                graph.Series.Clear();
                string predmeti = "";
                SqlCommand comm = new SqlCommand(@"
                                                SELECT predmet,
                                                (SELECT COUNT(studentID) 
                                                FROM  Izabrani_Predmet AS IZP JOIN Predmet AS P 
                                                ON IZP.predmetID = P.predmetID 
                                                WHERE godina_slusanja = '2019' AND P.predmet IN (@predmet)) AS '2019',
                                                (SELECT COUNT(studentID) FROM  
                                                Izabrani_Predmet AS IZP JOIN Predmet AS P 
                                                ON IZP.predmetID = P.predmetID 
                                                WHERE godina_slusanja = '2018' AND P.predmet IN (@predmet)) AS '2018',
                                                (SELECT COUNT(studentID) FROM  
                                                Izabrani_Predmet AS IZP JOIN Predmet AS P 
                                                ON IZP.predmetID = P.predmetID  
                                                WHERE godina_slusanja = '2017' AND P.predmet IN (@predmet)) AS '2017'
                                                FROM Predmet
                                                WHERE predmet IN (@predmet)
                                                GROUP BY predmet", conn);
                comm.Parameters.AddWithValue("@predmet", predmeti);
                SqlDataAdapter adapter = new SqlDataAdapter (comm);
                if (adapter != null) 
                {
                    DataTable GV_tabela = new DataTable();
                    adapter.Fill(GV_tabela);
                    GV.DataSource = GV_tabela;
                    GV.Refresh();

                    

                }
                
            }

            catch (Exception error)
            {
                MessageBox.Show(error.Message, "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            finally 
            {
                conn.Close();
            }
        }

        private void btnIzadji_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void checkedListBoxPredmeti_ItemCheck(object sender, ItemCheckEventArgs e)
        {
            if (checkedListBoxPredmeti.CheckedItems.Count > 4) 
            {
                /*for (int i = 0; i < checkedListBoxPredmeti.Items.Count; i++) 
                {
                    checkedListBoxPredmeti.SetItemChecked(i, false);
                }*/
                    
                MessageBox.Show("Mozete pregledati najvise 5 predmeta po prikazu!", "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
