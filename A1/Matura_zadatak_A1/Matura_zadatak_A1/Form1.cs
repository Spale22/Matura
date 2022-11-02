﻿using System;
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
        SqlConnection conn = new SqlConnection(@"Data Source=192.168.0.20;Initial Catalog=A1;User ID=SA;Password=sp@sic123.");
        public Form1()
        {
            InitializeComponent();
            /*tab 1*/
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
            /*tab 2*/
            numericUpDownOD.Maximum = DateTime.Today.Year;
            numericUpDownDO.Maximum = DateTime.Today.Year;
            numericUpDownDO.Value = DateTime.Today.Year;
            numericUpDownOD.Value = DateTime.Today.Year - 10;
            try 
            {
                conn.Open();
                DataTable citaoci = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT CitalacID,Ime,Prezime FROM Citalac", conn);
                adapter.Fill(citaoci);
                int i = 0;
                foreach (DataRow row in citaoci.Rows) 
                {
                    comboBoxCitalac.Items.Add(citaoci.Rows[i][0].ToString() + "-" + citaoci.Rows[i][1].ToString() + " " + citaoci.Rows[i][2].ToString());
                    i++;
                }
                
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
                reader.Dispose(); 
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

        private void btnPrikazi_Click(object sender, EventArgs e)
        {
           try 
            {
                conn.Open();

                if (!string.IsNullOrEmpty(comboBoxCitalac.SelectedItem.ToString()))
                {
                    //GridView
                    string comboBoxValue = comboBoxCitalac.SelectedItem.ToString();
                    string[] split = comboBoxValue.Split('-');
                    int CitalacID = Convert.ToInt32(split[0]);
                    SqlDataAdapter GV_adapter = new SqlDataAdapter("SELECT Ime + ' ' + Prezime AS Citalac, YEAR(DatumUzimanja) AS Godina, (SELECT COUNT(KnjigaID) FROM Na_Citanju WHERE CitalacID=" + CitalacID + ") AS 'Broj\niznajmljivanja',(SELECT COUNT(KnjigaID) FROM Na_Citanju WHERE CitalacID=" + CitalacID + " AND DatumVracanja IS NULL) AS 'Nije\nVracen' FROM Na_Citanju JOIN Citalac ON Na_citanju.CitalacID = Citalac.CitalacID WHERE Na_citanju.CitalacID=" + CitalacID + "; ", conn);
                    DataTable GV_tabela = new DataTable();
                    if (GV_adapter != null)
                    {
                        GV_adapter.Fill(GV_tabela);
                        GV.DataSource = GV_tabela;
                        GV.Refresh();
                    }
                    //Chart
                    for (int i = 0; i < GV_tabela.Rows.Count;i++ )
                    {
                        int br_vracene = Convert.ToInt32(GV_tabela.Rows[i][2].ToString());
                        int br_nevracene = Convert.ToInt32(GV_tabela.Rows[i][3].ToString());
                        int godina = Convert.ToInt32(GV_tabela.Rows[i][1].ToString()); ;
                        chart.Series[0].Points.AddXY(godina,br_vracene);
                        chart.Series[1].Points.AddXY(godina, br_nevracene);
                    }
                }

                else
                    MessageBox.Show("Odaberite Citaoca!","",MessageBoxButtons.OK,MessageBoxIcon.Error);
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

    }
}
