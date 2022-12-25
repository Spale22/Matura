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
using System.IO;

namespace Matura_Zadatak_A27
{
    public partial class Modeli : Form
    {

        SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=A27;User ID=SA;Password=sp@sic123.");

        public Modeli()
        {
            InitializeComponent();
        }

        private void Modeli_Load(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                cbProizvodjac.Text = "--svi--";
                SqlCommand comm = new SqlCommand(@"SELECT naziv FROM Proizvodjac", conn);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read()) 
                {
                    cbProizvodjac.Items.Add(reader[0].ToString());
                }
                reader.Dispose();
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

        private void GV_Referesh(string proizvodjac) 
        {
            try
            {
                if(conn.State != ConnectionState.Open)
                    conn.Open();
                GV.Rows.Clear();
                string errorImg = @"C:\Users\Velja\Desktop\Matura\A27\Matura\A27\Matura_Zadatak_A27\Matura_Zadatak_A27\Model Files\Images\noImg.jpg";
                SqlCommand comm = new SqlCommand(@"SELECT naziv,slika FROM Model WHERE proizvodjacID=(SELECT proizvodjacID FROM Proizvodjac WHERE naziv = @proizvodjac);", conn);
                comm.Parameters.AddWithValue("@proizvodjac", proizvodjac);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    GV.Rows.Add(reader[0].ToString(), Image.FromFile(!string.IsNullOrEmpty(reader[1].ToString()) ? reader[1].ToString() : errorImg));
                }
                reader.Dispose();
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

        private void Modeli_FormClosed(object sender, FormClosedEventArgs e)
        {
            Osiguranje f = new Osiguranje();
            f.Show();
            this.Hide();
        }

        private void toolStripButtonAdd_Click(object sender, EventArgs e)
        {
            try
            {
                if (GV.SelectedRows.Count > 0)
                {
                    conn.Open();
                    OpenFileDialog f = new OpenFileDialog();
                    f.ShowDialog();
                    string[] pom = f.FileName.Split('\\');
                    lblImgFileName.Text = pom[pom.Length - 1];
                    pictureBoxModel.Image = Image.FromFile(f.FileName);
                    SqlCommand comm = new SqlCommand(@"UPDATE Model SET slika=@slika WHERE naziv=@naziv 
                                                        AND 
                                                        proizvodjacID=(SELECT proizvodjacID FROM Proizvodjac WHERE naziv = @proizvodjac);", conn);
                    comm.Parameters.AddWithValue("@proizvodjac", cbProizvodjac.Text);
                    comm.Parameters.AddWithValue("@naziv", GV.SelectedRows[0].Cells[0].Value.ToString());
                    comm.Parameters.AddWithValue("@slika", f.FileName);
                    comm.ExecuteNonQuery();
                    GV_Referesh(cbProizvodjac.Text);
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

        private void toolStripButtonDel_Click(object sender, EventArgs e)
        {
            try
            {
                if (GV.SelectedRows.Count > 0)
                {
                    conn.Open();
                    string errorImg = @"C:\Users\Velja\Desktop\Matura\A27\Matura\A27\Matura_Zadatak_A27\Matura_Zadatak_A27\Model Files\Images\noImg.jpg";
                    lblImgFileName.Text = "noImg.jpg";
                    pictureBoxModel.Image = Image.FromFile(errorImg);
                    SqlCommand comm = new SqlCommand(@"UPDATE Model SET slika=@slika WHERE naziv=@naziv 
                                                        AND 
                                                        proizvodjacID=(SELECT proizvodjacID FROM Proizvodjac WHERE naziv = @proizvodjac);", conn);
                    comm.Parameters.AddWithValue("@proizvodjac", cbProizvodjac.Text);
                    comm.Parameters.AddWithValue("@naziv", GV.SelectedRows[0].Cells[0].Value.ToString());
                    comm.Parameters.AddWithValue("@slika", errorImg);
                    comm.ExecuteNonQuery();
                    GV_Referesh(cbProizvodjac.Text);
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

        private void toolStripButtonExit_Click(object sender, EventArgs e)
        {
            Osiguranje f = new Osiguranje();
            f.Show();
            this.Hide();
        }

        private void cbProizvodjac_SelectedIndexChanged(object sender, EventArgs e)
        {
            GV_Referesh(cbProizvodjac.SelectedItem.ToString());
        }

        private void GV_SelectionChanged(object sender, EventArgs e)
        {
            if (GV.SelectedRows.Count > 0)
            {
                pictureBoxModel.Image = (Image)GV.SelectedRows[0].Cells[1].Value;
                lblImgFileName.Text = GV.SelectedRows[0].Cells[0].Value.ToString() + ".jpg";
            }
        }
    }
}
