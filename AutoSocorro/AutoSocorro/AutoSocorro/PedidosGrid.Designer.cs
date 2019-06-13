namespace AutoSocorro
{
    partial class PedidosGrid
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(PedidosGrid));
            this.GridFunc = new System.Windows.Forms.DataGridView();
            this.btxtConsultar = new Bunifu.Framework.UI.BunifuTextbox();
            this.bunifuCustomTextbox1 = new WindowsFormsControlLibrary1.BunifuCustomTextbox();
            this.bunifuSeparator1 = new Bunifu.Framework.UI.BunifuSeparator();
            this.label1 = new System.Windows.Forms.Label();
            this.bbtnClienteJuridico = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnHome = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnServiço = new Bunifu.Framework.UI.BunifuFlatButton();
            this.lbl_tit = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.bbtnPedido = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnFuncionario = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnCliente = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnLogoff = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnMinimizar = new Bunifu.Framework.UI.BunifuThinButton2();
            this.bbtnFechar = new Bunifu.Framework.UI.BunifuThinButton2();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.bdropUF = new Bunifu.Framework.UI.BunifuDropdown();
            ((System.ComponentModel.ISupportInitialize)(this.GridFunc)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // GridFunc
            // 
            this.GridFunc.AllowUserToAddRows = false;
            this.GridFunc.AllowUserToDeleteRows = false;
            this.GridFunc.AllowUserToResizeColumns = false;
            this.GridFunc.AllowUserToResizeRows = false;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.Snow;
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.Snow;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.Black;
            this.GridFunc.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle6;
            this.GridFunc.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.GridFunc.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.GridFunc.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.GridFunc.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.GridFunc.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Century Gothic", 10F);
            dataGridViewCellStyle7.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridFunc.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.GridFunc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridFunc.Cursor = System.Windows.Forms.Cursors.Hand;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle8.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(123)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            dataGridViewCellStyle8.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle8.NullValue = "\"\"";
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(123)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridFunc.DefaultCellStyle = dataGridViewCellStyle8;
            this.GridFunc.EnableHeadersVisualStyles = false;
            this.GridFunc.GridColor = System.Drawing.Color.White;
            this.GridFunc.Location = new System.Drawing.Point(242, 196);
            this.GridFunc.MultiSelect = false;
            this.GridFunc.Name = "GridFunc";
            this.GridFunc.ReadOnly = true;
            dataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle9.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            dataGridViewCellStyle9.Font = new System.Drawing.Font("Century Gothic", 10F);
            dataGridViewCellStyle9.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle9.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            dataGridViewCellStyle9.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle9.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridFunc.RowHeadersDefaultCellStyle = dataGridViewCellStyle9;
            this.GridFunc.RowHeadersVisible = false;
            this.GridFunc.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToDisplayedHeaders;
            dataGridViewCellStyle10.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle10.BackColor = System.Drawing.Color.Gainsboro;
            dataGridViewCellStyle10.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle10.SelectionBackColor = System.Drawing.Color.Gainsboro;
            dataGridViewCellStyle10.SelectionForeColor = System.Drawing.Color.Black;
            this.GridFunc.RowsDefaultCellStyle = dataGridViewCellStyle10;
            this.GridFunc.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.GridFunc.Size = new System.Drawing.Size(935, 317);
            this.GridFunc.TabIndex = 221;
            // 
            // btxtConsultar
            // 
            this.btxtConsultar.BackColor = System.Drawing.Color.White;
            this.btxtConsultar.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btxtConsultar.BackgroundImage")));
            this.btxtConsultar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btxtConsultar.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtConsultar.Icon = ((System.Drawing.Image)(resources.GetObject("btxtConsultar.Icon")));
            this.btxtConsultar.Location = new System.Drawing.Point(242, 531);
            this.btxtConsultar.Name = "btxtConsultar";
            this.btxtConsultar.Size = new System.Drawing.Size(430, 42);
            this.btxtConsultar.TabIndex = 215;
            this.btxtConsultar.text = "Consultar";
            // 
            // bunifuCustomTextbox1
            // 
            this.bunifuCustomTextbox1.BorderColor = System.Drawing.Color.SeaGreen;
            this.bunifuCustomTextbox1.Location = new System.Drawing.Point(-7, -8);
            this.bunifuCustomTextbox1.Name = "bunifuCustomTextbox1";
            this.bunifuCustomTextbox1.Size = new System.Drawing.Size(100, 20);
            this.bunifuCustomTextbox1.TabIndex = 220;
            // 
            // bunifuSeparator1
            // 
            this.bunifuSeparator1.BackColor = System.Drawing.Color.Transparent;
            this.bunifuSeparator1.LineColor = System.Drawing.Color.FromArgb(((int)(((byte)(105)))), ((int)(((byte)(105)))), ((int)(((byte)(105)))));
            this.bunifuSeparator1.LineThickness = 1;
            this.bunifuSeparator1.Location = new System.Drawing.Point(221, 155);
            this.bunifuSeparator1.Name = "bunifuSeparator1";
            this.bunifuSeparator1.Size = new System.Drawing.Size(985, 35);
            this.bunifuSeparator1.TabIndex = 219;
            this.bunifuSeparator1.Transparency = 255;
            this.bunifuSeparator1.Vertical = false;
            // 
            // label1
            // 
            this.label1.BackColor = System.Drawing.Color.White;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 22F);
            this.label1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label1.Location = new System.Drawing.Point(221, 98);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(985, 72);
            this.label1.TabIndex = 218;
            this.label1.Text = "Consultar Funcionário";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // bbtnClienteJuridico
            // 
            this.bbtnClienteJuridico.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnClienteJuridico.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnClienteJuridico.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnClienteJuridico.BorderRadius = 0;
            this.bbtnClienteJuridico.ButtonText = "Clientes Jurídicos";
            this.bbtnClienteJuridico.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnClienteJuridico.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnClienteJuridico.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnClienteJuridico.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnClienteJuridico.Iconimage")));
            this.bbtnClienteJuridico.Iconimage_right = null;
            this.bbtnClienteJuridico.Iconimage_right_Selected = null;
            this.bbtnClienteJuridico.Iconimage_Selected = null;
            this.bbtnClienteJuridico.IconMarginLeft = 0;
            this.bbtnClienteJuridico.IconMarginRight = 0;
            this.bbtnClienteJuridico.IconRightVisible = true;
            this.bbtnClienteJuridico.IconRightZoom = 0D;
            this.bbtnClienteJuridico.IconVisible = true;
            this.bbtnClienteJuridico.IconZoom = 40D;
            this.bbtnClienteJuridico.IsTab = false;
            this.bbtnClienteJuridico.Location = new System.Drawing.Point(0, 141);
            this.bbtnClienteJuridico.Name = "bbtnClienteJuridico";
            this.bbtnClienteJuridico.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnClienteJuridico.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnClienteJuridico.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnClienteJuridico.selected = false;
            this.bbtnClienteJuridico.Size = new System.Drawing.Size(213, 48);
            this.bbtnClienteJuridico.TabIndex = 16;
            this.bbtnClienteJuridico.Text = "Clientes Jurídicos";
            this.bbtnClienteJuridico.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnClienteJuridico.Textcolor = System.Drawing.Color.White;
            this.bbtnClienteJuridico.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            // 
            // bbtnHome
            // 
            this.bbtnHome.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnHome.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnHome.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnHome.BorderRadius = 0;
            this.bbtnHome.ButtonText = "Home";
            this.bbtnHome.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnHome.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnHome.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnHome.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnHome.Iconimage")));
            this.bbtnHome.Iconimage_right = null;
            this.bbtnHome.Iconimage_right_Selected = null;
            this.bbtnHome.Iconimage_Selected = null;
            this.bbtnHome.IconMarginLeft = 17;
            this.bbtnHome.IconMarginRight = 0;
            this.bbtnHome.IconRightVisible = true;
            this.bbtnHome.IconRightZoom = 0D;
            this.bbtnHome.IconVisible = true;
            this.bbtnHome.IconZoom = 40D;
            this.bbtnHome.IsTab = false;
            this.bbtnHome.Location = new System.Drawing.Point(0, 0);
            this.bbtnHome.Name = "bbtnHome";
            this.bbtnHome.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnHome.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnHome.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnHome.selected = false;
            this.bbtnHome.Size = new System.Drawing.Size(213, 48);
            this.bbtnHome.TabIndex = 15;
            this.bbtnHome.Text = "Home";
            this.bbtnHome.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnHome.Textcolor = System.Drawing.Color.White;
            this.bbtnHome.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            // 
            // bbtnServiço
            // 
            this.bbtnServiço.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnServiço.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnServiço.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnServiço.BorderRadius = 0;
            this.bbtnServiço.ButtonText = "Adicionais";
            this.bbtnServiço.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnServiço.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnServiço.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnServiço.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnServiço.Iconimage")));
            this.bbtnServiço.Iconimage_right = null;
            this.bbtnServiço.Iconimage_right_Selected = null;
            this.bbtnServiço.Iconimage_Selected = null;
            this.bbtnServiço.IconMarginLeft = 0;
            this.bbtnServiço.IconMarginRight = 0;
            this.bbtnServiço.IconRightVisible = true;
            this.bbtnServiço.IconRightZoom = 0D;
            this.bbtnServiço.IconVisible = true;
            this.bbtnServiço.IconZoom = 40D;
            this.bbtnServiço.IsTab = false;
            this.bbtnServiço.Location = new System.Drawing.Point(0, 234);
            this.bbtnServiço.Name = "bbtnServiço";
            this.bbtnServiço.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnServiço.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnServiço.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnServiço.selected = false;
            this.bbtnServiço.Size = new System.Drawing.Size(213, 48);
            this.bbtnServiço.TabIndex = 14;
            this.bbtnServiço.Text = "Adicionais";
            this.bbtnServiço.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnServiço.Textcolor = System.Drawing.Color.White;
            this.bbtnServiço.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            // 
            // lbl_tit
            // 
            this.lbl_tit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.lbl_tit.Font = new System.Drawing.Font("Century Gothic", 27.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_tit.ForeColor = System.Drawing.Color.White;
            this.lbl_tit.Location = new System.Drawing.Point(203, 0);
            this.lbl_tit.Name = "lbl_tit";
            this.lbl_tit.Size = new System.Drawing.Size(995, 92);
            this.lbl_tit.TabIndex = 0;
            this.lbl_tit.Text = "Auto Socorro";
            this.lbl_tit.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::AutoSocorro.Properties.Resources.Logo;
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(185, 66);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // bbtnPedido
            // 
            this.bbtnPedido.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnPedido.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnPedido.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnPedido.BorderRadius = 0;
            this.bbtnPedido.ButtonText = "Chamadas";
            this.bbtnPedido.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnPedido.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnPedido.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnPedido.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnPedido.Iconimage")));
            this.bbtnPedido.Iconimage_right = null;
            this.bbtnPedido.Iconimage_right_Selected = null;
            this.bbtnPedido.Iconimage_Selected = null;
            this.bbtnPedido.IconMarginLeft = 17;
            this.bbtnPedido.IconMarginRight = 0;
            this.bbtnPedido.IconRightVisible = true;
            this.bbtnPedido.IconRightZoom = 0D;
            this.bbtnPedido.IconVisible = true;
            this.bbtnPedido.IconZoom = 40D;
            this.bbtnPedido.IsTab = false;
            this.bbtnPedido.Location = new System.Drawing.Point(0, 47);
            this.bbtnPedido.Name = "bbtnPedido";
            this.bbtnPedido.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnPedido.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnPedido.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnPedido.selected = false;
            this.bbtnPedido.Size = new System.Drawing.Size(213, 48);
            this.bbtnPedido.TabIndex = 13;
            this.bbtnPedido.Text = "Chamadas";
            this.bbtnPedido.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnPedido.Textcolor = System.Drawing.Color.White;
            this.bbtnPedido.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            // 
            // bbtnFuncionario
            // 
            this.bbtnFuncionario.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnFuncionario.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnFuncionario.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnFuncionario.BorderRadius = 0;
            this.bbtnFuncionario.ButtonText = "Funcionários";
            this.bbtnFuncionario.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnFuncionario.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnFuncionario.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnFuncionario.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnFuncionario.Iconimage")));
            this.bbtnFuncionario.Iconimage_right = null;
            this.bbtnFuncionario.Iconimage_right_Selected = null;
            this.bbtnFuncionario.Iconimage_Selected = null;
            this.bbtnFuncionario.IconMarginLeft = 0;
            this.bbtnFuncionario.IconMarginRight = 0;
            this.bbtnFuncionario.IconRightVisible = true;
            this.bbtnFuncionario.IconRightZoom = 0D;
            this.bbtnFuncionario.IconVisible = true;
            this.bbtnFuncionario.IconZoom = 40D;
            this.bbtnFuncionario.IsTab = false;
            this.bbtnFuncionario.Location = new System.Drawing.Point(0, 187);
            this.bbtnFuncionario.Name = "bbtnFuncionario";
            this.bbtnFuncionario.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnFuncionario.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnFuncionario.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnFuncionario.selected = false;
            this.bbtnFuncionario.Size = new System.Drawing.Size(213, 48);
            this.bbtnFuncionario.TabIndex = 12;
            this.bbtnFuncionario.Text = "Funcionários";
            this.bbtnFuncionario.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnFuncionario.Textcolor = System.Drawing.Color.White;
            this.bbtnFuncionario.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            // 
            // bbtnCliente
            // 
            this.bbtnCliente.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnCliente.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnCliente.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnCliente.BorderRadius = 0;
            this.bbtnCliente.ButtonText = "Clientes Físicos";
            this.bbtnCliente.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnCliente.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnCliente.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnCliente.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnCliente.Iconimage")));
            this.bbtnCliente.Iconimage_right = null;
            this.bbtnCliente.Iconimage_right_Selected = null;
            this.bbtnCliente.Iconimage_Selected = null;
            this.bbtnCliente.IconMarginLeft = 0;
            this.bbtnCliente.IconMarginRight = 0;
            this.bbtnCliente.IconRightVisible = true;
            this.bbtnCliente.IconRightZoom = 0D;
            this.bbtnCliente.IconVisible = true;
            this.bbtnCliente.IconZoom = 40D;
            this.bbtnCliente.IsTab = false;
            this.bbtnCliente.Location = new System.Drawing.Point(0, 94);
            this.bbtnCliente.Name = "bbtnCliente";
            this.bbtnCliente.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnCliente.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnCliente.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnCliente.selected = false;
            this.bbtnCliente.Size = new System.Drawing.Size(213, 48);
            this.bbtnCliente.TabIndex = 11;
            this.bbtnCliente.Text = "Clientes Físicos";
            this.bbtnCliente.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnCliente.Textcolor = System.Drawing.Color.White;
            this.bbtnCliente.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            // 
            // bbtnLogoff
            // 
            this.bbtnLogoff.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnLogoff.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnLogoff.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnLogoff.BorderRadius = 0;
            this.bbtnLogoff.ButtonText = "Logoff";
            this.bbtnLogoff.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnLogoff.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnLogoff.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnLogoff.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnLogoff.Iconimage")));
            this.bbtnLogoff.Iconimage_right = null;
            this.bbtnLogoff.Iconimage_right_Selected = null;
            this.bbtnLogoff.Iconimage_Selected = null;
            this.bbtnLogoff.IconMarginLeft = 0;
            this.bbtnLogoff.IconMarginRight = 0;
            this.bbtnLogoff.IconRightVisible = true;
            this.bbtnLogoff.IconRightZoom = 0D;
            this.bbtnLogoff.IconVisible = true;
            this.bbtnLogoff.IconZoom = 40D;
            this.bbtnLogoff.IsTab = false;
            this.bbtnLogoff.Location = new System.Drawing.Point(0, 458);
            this.bbtnLogoff.Name = "bbtnLogoff";
            this.bbtnLogoff.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnLogoff.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnLogoff.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnLogoff.selected = false;
            this.bbtnLogoff.Size = new System.Drawing.Size(213, 48);
            this.bbtnLogoff.TabIndex = 8;
            this.bbtnLogoff.Text = "Logoff";
            this.bbtnLogoff.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnLogoff.Textcolor = System.Drawing.Color.White;
            this.bbtnLogoff.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            // 
            // bbtnMinimizar
            // 
            this.bbtnMinimizar.ActiveBorderThickness = 1;
            this.bbtnMinimizar.ActiveCornerRadius = 1;
            this.bbtnMinimizar.ActiveFillColor = System.Drawing.Color.Transparent;
            this.bbtnMinimizar.ActiveForecolor = System.Drawing.Color.Gold;
            this.bbtnMinimizar.ActiveLineColor = System.Drawing.Color.White;
            this.bbtnMinimizar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnMinimizar.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("bbtnMinimizar.BackgroundImage")));
            this.bbtnMinimizar.ButtonText = "_";
            this.bbtnMinimizar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnMinimizar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnMinimizar.ForeColor = System.Drawing.Color.White;
            this.bbtnMinimizar.IdleBorderThickness = 1;
            this.bbtnMinimizar.IdleCornerRadius = 1;
            this.bbtnMinimizar.IdleFillColor = System.Drawing.Color.Transparent;
            this.bbtnMinimizar.IdleForecolor = System.Drawing.Color.White;
            this.bbtnMinimizar.IdleLineColor = System.Drawing.Color.White;
            this.bbtnMinimizar.Location = new System.Drawing.Point(1106, 4);
            this.bbtnMinimizar.Margin = new System.Windows.Forms.Padding(8);
            this.bbtnMinimizar.Name = "bbtnMinimizar";
            this.bbtnMinimizar.Size = new System.Drawing.Size(40, 40);
            this.bbtnMinimizar.TabIndex = 2;
            this.bbtnMinimizar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // bbtnFechar
            // 
            this.bbtnFechar.ActiveBorderThickness = 1;
            this.bbtnFechar.ActiveCornerRadius = 1;
            this.bbtnFechar.ActiveFillColor = System.Drawing.Color.Transparent;
            this.bbtnFechar.ActiveForecolor = System.Drawing.Color.Red;
            this.bbtnFechar.ActiveLineColor = System.Drawing.Color.White;
            this.bbtnFechar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnFechar.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("bbtnFechar.BackgroundImage")));
            this.bbtnFechar.ButtonText = "X";
            this.bbtnFechar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnFechar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnFechar.ForeColor = System.Drawing.Color.White;
            this.bbtnFechar.IdleBorderThickness = 1;
            this.bbtnFechar.IdleCornerRadius = 1;
            this.bbtnFechar.IdleFillColor = System.Drawing.Color.Transparent;
            this.bbtnFechar.IdleForecolor = System.Drawing.Color.White;
            this.bbtnFechar.IdleLineColor = System.Drawing.Color.White;
            this.bbtnFechar.Location = new System.Drawing.Point(1148, 4);
            this.bbtnFechar.Margin = new System.Windows.Forms.Padding(8);
            this.bbtnFechar.Name = "bbtnFechar";
            this.bbtnFechar.Size = new System.Drawing.Size(40, 40);
            this.bbtnFechar.TabIndex = 0;
            this.bbtnFechar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(213, 92);
            this.panel2.TabIndex = 1;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.panel1.Controls.Add(this.bbtnMinimizar);
            this.panel1.Controls.Add(this.bbtnFechar);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.lbl_tit);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1198, 92);
            this.panel1.TabIndex = 216;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.panel3.Controls.Add(this.bbtnClienteJuridico);
            this.panel3.Controls.Add(this.bbtnHome);
            this.panel3.Controls.Add(this.bbtnServiço);
            this.panel3.Controls.Add(this.bbtnPedido);
            this.panel3.Controls.Add(this.bbtnFuncionario);
            this.panel3.Controls.Add(this.bbtnCliente);
            this.panel3.Controls.Add(this.bbtnLogoff);
            this.panel3.Location = new System.Drawing.Point(8, 99);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(213, 505);
            this.panel3.TabIndex = 217;
            // 
            // bdropUF
            // 
            this.bdropUF.BackColor = System.Drawing.Color.Transparent;
            this.bdropUF.BorderRadius = 3;
            this.bdropUF.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bdropUF.ForeColor = System.Drawing.Color.White;
            this.bdropUF.Items = new string[] {
        "UF"};
            this.bdropUF.Location = new System.Drawing.Point(747, 531);
            this.bdropUF.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.bdropUF.Name = "bdropUF";
            this.bdropUF.NomalColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bdropUF.onHoverColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bdropUF.selectedIndex = 0;
            this.bdropUF.Size = new System.Drawing.Size(430, 44);
            this.bdropUF.TabIndex = 222;
            // 
            // PedidosGrid
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1198, 597);
            this.Controls.Add(this.bdropUF);
            this.Controls.Add(this.GridFunc);
            this.Controls.Add(this.btxtConsultar);
            this.Controls.Add(this.bunifuCustomTextbox1);
            this.Controls.Add(this.bunifuSeparator1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel3);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "PedidosGrid";
            this.Text = "PedidosGrid";
            ((System.ComponentModel.ISupportInitialize)(this.GridFunc)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView GridFunc;
        private Bunifu.Framework.UI.BunifuTextbox btxtConsultar;
        private WindowsFormsControlLibrary1.BunifuCustomTextbox bunifuCustomTextbox1;
        private Bunifu.Framework.UI.BunifuSeparator bunifuSeparator1;
        private System.Windows.Forms.Label label1;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnClienteJuridico;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnHome;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnServiço;
        private System.Windows.Forms.Label lbl_tit;
        private System.Windows.Forms.PictureBox pictureBox1;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnPedido;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnFuncionario;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnCliente;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnLogoff;
        private Bunifu.Framework.UI.BunifuThinButton2 bbtnMinimizar;
        private Bunifu.Framework.UI.BunifuThinButton2 bbtnFechar;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel3;
        private Bunifu.Framework.UI.BunifuDropdown bdropUF;
    }
}