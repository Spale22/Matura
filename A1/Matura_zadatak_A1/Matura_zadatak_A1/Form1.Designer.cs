namespace Matura_zadatak_A1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabPageCitaoci = new System.Windows.Forms.TabPage();
            this.listViewCitaoci = new System.Windows.Forms.ListView();
            this.lvcBrCK = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lvcJMBG = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lvcIme = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lvcPrezime = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lvcAdresa = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.btnIzadji = new System.Windows.Forms.Button();
            this.btnUpisiCitaoca = new System.Windows.Forms.Button();
            this.tbAdresa = new System.Windows.Forms.TextBox();
            this.lblAdresa = new System.Windows.Forms.Label();
            this.tbPrezime = new System.Windows.Forms.TextBox();
            this.lblPrezime = new System.Windows.Forms.Label();
            this.tbIme = new System.Windows.Forms.TextBox();
            this.lblIme = new System.Windows.Forms.Label();
            this.tbJMBG = new System.Windows.Forms.TextBox();
            this.lblJMBG = new System.Windows.Forms.Label();
            this.tbBrCK = new System.Windows.Forms.TextBox();
            this.lblBrojCK = new System.Windows.Forms.Label();
            this.tabPagePregled = new System.Windows.Forms.TabPage();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.numericUpDownDO = new System.Windows.Forms.NumericUpDown();
            this.numericUpDownOD = new System.Windows.Forms.NumericUpDown();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.comboBoxCitalac = new System.Windows.Forms.ComboBox();
            this.tabPageAbout = new System.Windows.Forms.TabPage();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.tabControl.SuspendLayout();
            this.tabPageCitaoci.SuspendLayout();
            this.tabPagePregled.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownDO)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownOD)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabPageCitaoci);
            this.tabControl.Controls.Add(this.tabPagePregled);
            this.tabControl.Controls.Add(this.tabPageAbout);
            this.tabControl.Location = new System.Drawing.Point(-2, -3);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(636, 433);
            this.tabControl.TabIndex = 0;
            this.tabControl.Tag = "";
            // 
            // tabPageCitaoci
            // 
            this.tabPageCitaoci.Controls.Add(this.listViewCitaoci);
            this.tabPageCitaoci.Controls.Add(this.btnIzadji);
            this.tabPageCitaoci.Controls.Add(this.btnUpisiCitaoca);
            this.tabPageCitaoci.Controls.Add(this.tbAdresa);
            this.tabPageCitaoci.Controls.Add(this.lblAdresa);
            this.tabPageCitaoci.Controls.Add(this.tbPrezime);
            this.tabPageCitaoci.Controls.Add(this.lblPrezime);
            this.tabPageCitaoci.Controls.Add(this.tbIme);
            this.tabPageCitaoci.Controls.Add(this.lblIme);
            this.tabPageCitaoci.Controls.Add(this.tbJMBG);
            this.tabPageCitaoci.Controls.Add(this.lblJMBG);
            this.tabPageCitaoci.Controls.Add(this.tbBrCK);
            this.tabPageCitaoci.Controls.Add(this.lblBrojCK);
            this.tabPageCitaoci.Location = new System.Drawing.Point(4, 22);
            this.tabPageCitaoci.Name = "tabPageCitaoci";
            this.tabPageCitaoci.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageCitaoci.Size = new System.Drawing.Size(628, 407);
            this.tabPageCitaoci.TabIndex = 0;
            this.tabPageCitaoci.Text = "Citaoci";
            this.tabPageCitaoci.UseVisualStyleBackColor = true;
            // 
            // listViewCitaoci
            // 
            this.listViewCitaoci.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.lvcBrCK,
            this.lvcJMBG,
            this.lvcIme,
            this.lvcPrezime,
            this.lvcAdresa});
            this.listViewCitaoci.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listViewCitaoci.FullRowSelect = true;
            this.listViewCitaoci.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable;
            this.listViewCitaoci.Location = new System.Drawing.Point(237, 6);
            this.listViewCitaoci.MultiSelect = false;
            this.listViewCitaoci.Name = "listViewCitaoci";
            this.listViewCitaoci.Size = new System.Drawing.Size(382, 268);
            this.listViewCitaoci.TabIndex = 12;
            this.listViewCitaoci.UseCompatibleStateImageBehavior = false;
            this.listViewCitaoci.View = System.Windows.Forms.View.Details;
            this.listViewCitaoci.SelectedIndexChanged += new System.EventHandler(this.listViewCitaoci_SelectedIndexChanged);
            // 
            // lvcBrCK
            // 
            this.lvcBrCK.Text = "Članska karta";
            this.lvcBrCK.Width = 71;
            // 
            // lvcJMBG
            // 
            this.lvcJMBG.Text = "JMBG";
            this.lvcJMBG.Width = 80;
            // 
            // lvcIme
            // 
            this.lvcIme.Text = "Ime";
            this.lvcIme.Width = 70;
            // 
            // lvcPrezime
            // 
            this.lvcPrezime.Text = "Prezime";
            this.lvcPrezime.Width = 66;
            // 
            // lvcAdresa
            // 
            this.lvcAdresa.Text = "Adresa";
            this.lvcAdresa.Width = 88;
            // 
            // btnIzadji
            // 
            this.btnIzadji.Location = new System.Drawing.Point(37, 245);
            this.btnIzadji.Name = "btnIzadji";
            this.btnIzadji.Size = new System.Drawing.Size(194, 29);
            this.btnIzadji.TabIndex = 11;
            this.btnIzadji.Text = "Izađi";
            this.btnIzadji.UseVisualStyleBackColor = true;
            this.btnIzadji.Click += new System.EventHandler(this.btnIzadji_Click);
            // 
            // btnUpisiCitaoca
            // 
            this.btnUpisiCitaoca.BackColor = System.Drawing.Color.Transparent;
            this.btnUpisiCitaoca.Enabled = false;
            this.btnUpisiCitaoca.FlatAppearance.BorderColor = System.Drawing.Color.Red;
            this.btnUpisiCitaoca.FlatAppearance.BorderSize = 5;
            this.btnUpisiCitaoca.ForeColor = System.Drawing.Color.Red;
            this.btnUpisiCitaoca.Location = new System.Drawing.Point(37, 210);
            this.btnUpisiCitaoca.Name = "btnUpisiCitaoca";
            this.btnUpisiCitaoca.Size = new System.Drawing.Size(194, 29);
            this.btnUpisiCitaoca.TabIndex = 10;
            this.btnUpisiCitaoca.Text = "Upiši čitaoca";
            this.btnUpisiCitaoca.UseVisualStyleBackColor = false;
            this.btnUpisiCitaoca.Click += new System.EventHandler(this.btnUpisiCitaoca_Click);
            // 
            // tbAdresa
            // 
            this.tbAdresa.Location = new System.Drawing.Point(108, 172);
            this.tbAdresa.Name = "tbAdresa";
            this.tbAdresa.Size = new System.Drawing.Size(123, 20);
            this.tbAdresa.TabIndex = 9;
            // 
            // lblAdresa
            // 
            this.lblAdresa.AutoSize = true;
            this.lblAdresa.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAdresa.Location = new System.Drawing.Point(40, 172);
            this.lblAdresa.Name = "lblAdresa";
            this.lblAdresa.Size = new System.Drawing.Size(58, 16);
            this.lblAdresa.TabIndex = 8;
            this.lblAdresa.Text = "Adresa";
            // 
            // tbPrezime
            // 
            this.tbPrezime.Location = new System.Drawing.Point(108, 128);
            this.tbPrezime.Name = "tbPrezime";
            this.tbPrezime.Size = new System.Drawing.Size(123, 20);
            this.tbPrezime.TabIndex = 7;
            // 
            // lblPrezime
            // 
            this.lblPrezime.AutoSize = true;
            this.lblPrezime.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPrezime.Location = new System.Drawing.Point(34, 132);
            this.lblPrezime.Name = "lblPrezime";
            this.lblPrezime.Size = new System.Drawing.Size(64, 16);
            this.lblPrezime.TabIndex = 6;
            this.lblPrezime.Text = "Prezime";
            // 
            // tbIme
            // 
            this.tbIme.Location = new System.Drawing.Point(108, 90);
            this.tbIme.Name = "tbIme";
            this.tbIme.Size = new System.Drawing.Size(123, 20);
            this.tbIme.TabIndex = 5;
            // 
            // lblIme
            // 
            this.lblIme.AutoSize = true;
            this.lblIme.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblIme.Location = new System.Drawing.Point(59, 91);
            this.lblIme.Name = "lblIme";
            this.lblIme.Size = new System.Drawing.Size(33, 16);
            this.lblIme.TabIndex = 4;
            this.lblIme.Text = "Ime";
            // 
            // tbJMBG
            // 
            this.tbJMBG.Location = new System.Drawing.Point(108, 52);
            this.tbJMBG.Name = "tbJMBG";
            this.tbJMBG.Size = new System.Drawing.Size(123, 20);
            this.tbJMBG.TabIndex = 3;
            // 
            // lblJMBG
            // 
            this.lblJMBG.AutoSize = true;
            this.lblJMBG.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblJMBG.Location = new System.Drawing.Point(43, 52);
            this.lblJMBG.Name = "lblJMBG";
            this.lblJMBG.Size = new System.Drawing.Size(49, 16);
            this.lblJMBG.TabIndex = 2;
            this.lblJMBG.Text = "JMBG";
            // 
            // tbBrCK
            // 
            this.tbBrCK.Location = new System.Drawing.Point(168, 20);
            this.tbBrCK.Name = "tbBrCK";
            this.tbBrCK.Size = new System.Drawing.Size(63, 20);
            this.tbBrCK.TabIndex = 1;
            this.tbBrCK.TextChanged += new System.EventHandler(this.tbBrCK_TextChanged);
            // 
            // lblBrojCK
            // 
            this.lblBrojCK.AutoSize = true;
            this.lblBrojCK.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblBrojCK.Location = new System.Drawing.Point(34, 20);
            this.lblBrojCK.Name = "lblBrojCK";
            this.lblBrojCK.Size = new System.Drawing.Size(128, 16);
            this.lblBrojCK.TabIndex = 0;
            this.lblBrojCK.Text = " Br. članske karte";
            // 
            // tabPagePregled
            // 
            this.tabPagePregled.Controls.Add(this.chart1);
            this.tabPagePregled.Controls.Add(this.dataGridView1);
            this.tabPagePregled.Controls.Add(this.numericUpDownDO);
            this.tabPagePregled.Controls.Add(this.numericUpDownOD);
            this.tabPagePregled.Controls.Add(this.label4);
            this.tabPagePregled.Controls.Add(this.label3);
            this.tabPagePregled.Controls.Add(this.label2);
            this.tabPagePregled.Controls.Add(this.label1);
            this.tabPagePregled.Controls.Add(this.comboBoxCitalac);
            this.tabPagePregled.Location = new System.Drawing.Point(4, 22);
            this.tabPagePregled.Name = "tabPagePregled";
            this.tabPagePregled.Padding = new System.Windows.Forms.Padding(3);
            this.tabPagePregled.Size = new System.Drawing.Size(628, 407);
            this.tabPagePregled.TabIndex = 1;
            this.tabPagePregled.Text = "Pregled iznajmljivanja";
            this.tabPagePregled.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(47, 127);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(240, 150);
            this.dataGridView1.TabIndex = 7;
            // 
            // numericUpDownDO
            // 
            this.numericUpDownDO.Location = new System.Drawing.Point(258, 42);
            this.numericUpDownDO.Name = "numericUpDownDO";
            this.numericUpDownDO.Size = new System.Drawing.Size(35, 20);
            this.numericUpDownDO.TabIndex = 6;
            // 
            // numericUpDownOD
            // 
            this.numericUpDownOD.Location = new System.Drawing.Point(182, 40);
            this.numericUpDownOD.Name = "numericUpDownOD";
            this.numericUpDownOD.Size = new System.Drawing.Size(43, 20);
            this.numericUpDownOD.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(232, 42);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(19, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "do";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(157, 42);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(19, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "od";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(47, 42);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(91, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Vremenski period ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(44, 92);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(45, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Citalac :";
            // 
            // comboBoxCitalac
            // 
            this.comboBoxCitalac.FormattingEnabled = true;
            this.comboBoxCitalac.Location = new System.Drawing.Point(95, 89);
            this.comboBoxCitalac.Name = "comboBoxCitalac";
            this.comboBoxCitalac.Size = new System.Drawing.Size(121, 21);
            this.comboBoxCitalac.TabIndex = 0;
            // 
            // tabPageAbout
            // 
            this.tabPageAbout.Location = new System.Drawing.Point(4, 22);
            this.tabPageAbout.Name = "tabPageAbout";
            this.tabPageAbout.Size = new System.Drawing.Size(628, 407);
            this.tabPageAbout.TabIndex = 2;
            this.tabPageAbout.Text = "O aplikaciji";
            this.tabPageAbout.UseVisualStyleBackColor = true;
            // 
            // chart1
            // 
            chartArea1.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.chart1.Legends.Add(legend1);
            this.chart1.Location = new System.Drawing.Point(319, 40);
            this.chart1.Name = "chart1";
            series1.ChartArea = "ChartArea1";
            series1.Legend = "Legend1";
            series1.Name = "Series1";
            this.chart1.Series.Add(series1);
            this.chart1.Size = new System.Drawing.Size(300, 237);
            this.chart1.TabIndex = 8;
            this.chart1.Text = "chart1";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(633, 431);
            this.Controls.Add(this.tabControl);
            this.Name = "Form1";
            this.Text = "Biblioteka \"Stevan Sremac\"";
            this.tabControl.ResumeLayout(false);
            this.tabPageCitaoci.ResumeLayout(false);
            this.tabPageCitaoci.PerformLayout();
            this.tabPagePregled.ResumeLayout(false);
            this.tabPagePregled.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownDO)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownOD)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabPageCitaoci;
        private System.Windows.Forms.TabPage tabPagePregled;
        private System.Windows.Forms.TabPage tabPageAbout;
        private System.Windows.Forms.Button btnIzadji;
        private System.Windows.Forms.Button btnUpisiCitaoca;
        private System.Windows.Forms.TextBox tbAdresa;
        private System.Windows.Forms.Label lblAdresa;
        private System.Windows.Forms.TextBox tbPrezime;
        private System.Windows.Forms.Label lblPrezime;
        private System.Windows.Forms.TextBox tbIme;
        private System.Windows.Forms.Label lblIme;
        private System.Windows.Forms.TextBox tbJMBG;
        private System.Windows.Forms.Label lblJMBG;
        private System.Windows.Forms.TextBox tbBrCK;
        private System.Windows.Forms.Label lblBrojCK;
        private System.Windows.Forms.ListView listViewCitaoci;
        private System.Windows.Forms.ColumnHeader lvcBrCK;
        private System.Windows.Forms.ColumnHeader lvcJMBG;
        private System.Windows.Forms.ColumnHeader lvcIme;
        private System.Windows.Forms.ColumnHeader lvcPrezime;
        private System.Windows.Forms.ColumnHeader lvcAdresa;
        private System.Windows.Forms.NumericUpDown numericUpDownDO;
        private System.Windows.Forms.NumericUpDown numericUpDownOD;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBoxCitalac;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;

    }
}

