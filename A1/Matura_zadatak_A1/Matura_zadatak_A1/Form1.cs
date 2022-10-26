using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Matura_zadatak_A1
{
    public partial class Form1 : Form
    {
        SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=Biblioteka;User ID=SA;Password=sp@sic123.");
        public Form1()
        {
            InitializeComponent();
            try
            {
                conn.Open();
                updateList();
            }

            catch (Exception error)
            {
                MessageBox.Show(error.Message);
            }

            finally
            {
                conn.Close();
            }
        }
        private void updateList() 
        {
            try
            {
                listViewCitaoci.Items.Clear();
                SqlCommand select_citaoci = new SqlCommand("SELECT * FROM Citalac", conn);
                SqlDataReader reader = select_citaoci.ExecuteReader();
                while (reader.Read())
                {
                    ListViewItem row = new ListViewItem(reader[0].ToString());
                    row.SubItems.Add(reader[1].ToString());
                    row.SubItems.Add(reader[2].ToString());
                    row.SubItems.Add(reader[3].ToString());
                    row.SubItems.Add(reader[4].ToString());
                    listViewCitaoci.Items.Add(row);
                }
                reader.Close(); 
            }

            catch (Exception error)
            {
                MessageBox.Show(error.Message);
            }
        }

        private void btnIzadji_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        
        private void tbBrCK_TextChanged(object sender, EventArgs e)
        {
            ListViewItem exist = listViewCitaoci.FindItemWithText(tbBrCK.Text);
            if (exist != null && !string.IsNullOrEmpty(tbBrCK.Text) )
            {
                tbJMBG.Text = exist.SubItems[1].Text;
                tbIme.Text = exist.SubItems[2].Text;
                tbPrezime.Text = exist.SubItems[3].Text;
                tbAdresa.Text = exist.SubItems[4].Text;
                btnUpisiCitaoca.Enabled = false;
            }

            else 
            {
                btnUpisiCitaoca.Enabled = true;
                tbJMBG.Text = "";
                tbIme.Text = "";
                tbPrezime.Text = "";
                tbAdresa.Text = ""; 
            }
        }

        private void btnUpisiCitaoca_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                int CitalacID = int.Parse(tbBrCK.Text);
                SqlCommand comm = new SqlCommand("INSERT INTO Citalac VALUES (" + CitalacID + ",'" + tbJMBG.Text + "','" + tbIme.Text + "','" + tbPrezime.Text + "','" + tbAdresa.Text + "');", conn);
                comm.ExecuteNonQuery();
                updateList();
                tbBrCK.Text = "";
                tbJMBG.Text = "";
                tbIme.Text = "";
                tbPrezime.Text = "";
                tbAdresa.Text = "";
                MessageBox.Show("Upis uspesan", "", MessageBoxButtons.OK, MessageBoxIcon.None);
                btnUpisiCitaoca.Enabled = false;
            }

            catch (Exception error)
            {
                MessageBox.Show(error.Message);
            }

            finally
            {
                conn.Close();
            }
        }

        private void listViewCitaoci_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listViewCitaoci.SelectedItems.Count != 0) 
            {
                tbBrCK.Text = listViewCitaoci.SelectedItems[0].Text;
                tbJMBG.Text = listViewCitaoci.SelectedItems[0].SubItems[1].Text;
                tbIme.Text = listViewCitaoci.SelectedItems[0].SubItems[2].Text;
                tbPrezime.Text = listViewCitaoci.SelectedItems[0].SubItems[3].Text;
                tbAdresa.Text = listViewCitaoci.SelectedItems[0].SubItems[4].Text;
            }   
        }
    }
}
