namespace AutoSocorro
{
    partial class ClienteJu
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ClienteJu));
            this.bdropAtrib = new Bunifu.Framework.UI.BunifuDropdown();
            this.GridCliente = new System.Windows.Forms.DataGridView();
            this.btxtCNPJ = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.btxtEmail = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.btxtTelefone = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.btxtNome = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.panel4 = new System.Windows.Forms.Panel();
            this.bbtnCancelar = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btxtIE = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.bbtnLimpar = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnAlterar = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnAutoCadastro = new Bunifu.Framework.UI.BunifuFlatButton();
            this.btxtConsultar = new Bunifu.Framework.UI.BunifuTextbox();
            this.bbtnEnviar = new Bunifu.Framework.UI.BunifuFlatButton();
            this.label1 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.lblUsu = new System.Windows.Forms.Label();
            this.bbtnClienteJu = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnHome = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnServiço = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnPedido = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnFuncionario = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnCliente = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bbtnLogoff = new Bunifu.Framework.UI.BunifuFlatButton();
            this.lbl_tit = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.bbtnMinimizar = new Bunifu.Framework.UI.BunifuThinButton2();
            this.bbtnFechar = new Bunifu.Framework.UI.BunifuThinButton2();
            this.bunifuSeparator1 = new Bunifu.Framework.UI.BunifuSeparator();
            ((System.ComponentModel.ISupportInitialize)(this.GridCliente)).BeginInit();
            this.panel4.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // bdropAtrib
            // 
            this.bdropAtrib.BackColor = System.Drawing.Color.Transparent;
            this.bdropAtrib.BorderRadius = 20;
            this.bdropAtrib.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bdropAtrib.ForeColor = System.Drawing.Color.White;
            this.bdropAtrib.Items = new string[] {
        "Todos",
        "Nome",
        "Email",
        "Telefone",
        "CNPJ",
        "IE"};
            this.bdropAtrib.Location = new System.Drawing.Point(415, 251);
            this.bdropAtrib.Margin = new System.Windows.Forms.Padding(0);
            this.bdropAtrib.Name = "bdropAtrib";
            this.bdropAtrib.NomalColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bdropAtrib.onHoverColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bdropAtrib.selectedIndex = -1;
            this.bdropAtrib.Size = new System.Drawing.Size(204, 44);
            this.bdropAtrib.TabIndex = 146;
            this.bdropAtrib.onItemSelected += new System.EventHandler(this.bdropAtrib_onItemSelected);
            this.bdropAtrib.Click += new System.EventHandler(this.bdropAtrib_onItemSelected);
            // 
            // GridCliente
            // 
            this.GridCliente.AllowUserToAddRows = false;
            this.GridCliente.AllowUserToDeleteRows = false;
            this.GridCliente.AllowUserToResizeColumns = false;
            this.GridCliente.AllowUserToResizeRows = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.Snow;
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.Snow;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.Black;
            this.GridCliente.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.GridCliente.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.GridCliente.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.GridCliente.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.GridCliente.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.GridCliente.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Century Gothic", 10F);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridCliente.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.GridCliente.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(123)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.NullValue = "\"\"";
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(123)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridCliente.DefaultCellStyle = dataGridViewCellStyle3;
            this.GridCliente.EnableHeadersVisualStyles = false;
            this.GridCliente.GridColor = System.Drawing.Color.White;
            this.GridCliente.Location = new System.Drawing.Point(48, 23);
            this.GridCliente.MultiSelect = false;
            this.GridCliente.Name = "GridCliente";
            this.GridCliente.ReadOnly = true;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Century Gothic", 10F);
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridCliente.RowHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.GridCliente.RowHeadersVisible = false;
            this.GridCliente.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToDisplayedHeaders;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.Gainsboro;
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.Gainsboro;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.Black;
            this.GridCliente.RowsDefaultCellStyle = dataGridViewCellStyle5;
            this.GridCliente.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.GridCliente.Size = new System.Drawing.Size(571, 214);
            this.GridCliente.TabIndex = 9;
            this.GridCliente.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.GridCliente_CellMouseClick);
            // 
            // btxtCNPJ
            // 
            this.btxtCNPJ.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtCNPJ.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtCNPJ.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtCNPJ.BorderThickness = 1;
            this.btxtCNPJ.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtCNPJ.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtCNPJ.ForeColor = System.Drawing.Color.DarkGray;
            this.btxtCNPJ.isPassword = false;
            this.btxtCNPJ.Location = new System.Drawing.Point(634, 195);
            this.btxtCNPJ.Margin = new System.Windows.Forms.Padding(4);
            this.btxtCNPJ.Name = "btxtCNPJ";
            this.btxtCNPJ.Size = new System.Drawing.Size(303, 44);
            this.btxtCNPJ.TabIndex = 5;
            this.btxtCNPJ.Text = "CNPJ";
            this.btxtCNPJ.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtCNPJ.Enter += new System.EventHandler(this.PlaceHolder_Enter);
            this.btxtCNPJ.Leave += new System.EventHandler(this.PlaceHolder_Leave);
            // 
            // btxtEmail
            // 
            this.btxtEmail.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtEmail.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtEmail.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtEmail.BorderThickness = 1;
            this.btxtEmail.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtEmail.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtEmail.ForeColor = System.Drawing.Color.DarkGray;
            this.btxtEmail.isPassword = false;
            this.btxtEmail.Location = new System.Drawing.Point(634, 80);
            this.btxtEmail.Margin = new System.Windows.Forms.Padding(4);
            this.btxtEmail.Name = "btxtEmail";
            this.btxtEmail.Size = new System.Drawing.Size(303, 44);
            this.btxtEmail.TabIndex = 3;
            this.btxtEmail.Text = "Email";
            this.btxtEmail.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtEmail.Enter += new System.EventHandler(this.PlaceHolder_Enter);
            this.btxtEmail.Leave += new System.EventHandler(this.PlaceHolder_Leave);
            // 
            // btxtTelefone
            // 
            this.btxtTelefone.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtTelefone.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtTelefone.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtTelefone.BorderThickness = 1;
            this.btxtTelefone.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtTelefone.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtTelefone.ForeColor = System.Drawing.Color.DarkGray;
            this.btxtTelefone.isPassword = false;
            this.btxtTelefone.Location = new System.Drawing.Point(634, 138);
            this.btxtTelefone.Margin = new System.Windows.Forms.Padding(4);
            this.btxtTelefone.Name = "btxtTelefone";
            this.btxtTelefone.Size = new System.Drawing.Size(303, 44);
            this.btxtTelefone.TabIndex = 4;
            this.btxtTelefone.Text = "Telefone";
            this.btxtTelefone.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtTelefone.Enter += new System.EventHandler(this.PlaceHolder_Enter);
            this.btxtTelefone.Leave += new System.EventHandler(this.PlaceHolder_Leave);
            // 
            // btxtNome
            // 
            this.btxtNome.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtNome.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtNome.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtNome.BorderThickness = 1;
            this.btxtNome.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtNome.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtNome.ForeColor = System.Drawing.Color.DarkGray;
            this.btxtNome.isPassword = false;
            this.btxtNome.Location = new System.Drawing.Point(634, 23);
            this.btxtNome.Margin = new System.Windows.Forms.Padding(4);
            this.btxtNome.Name = "btxtNome";
            this.btxtNome.Size = new System.Drawing.Size(303, 44);
            this.btxtNome.TabIndex = 2;
            this.btxtNome.Text = "Nome";
            this.btxtNome.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtNome.Enter += new System.EventHandler(this.PlaceHolder_Enter);
            this.btxtNome.Leave += new System.EventHandler(this.PlaceHolder_Leave);
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.Color.White;
            this.panel4.Controls.Add(this.bbtnCancelar);
            this.panel4.Controls.Add(this.btxtIE);
            this.panel4.Controls.Add(this.bbtnLimpar);
            this.panel4.Controls.Add(this.bbtnAlterar);
            this.panel4.Controls.Add(this.bbtnAutoCadastro);
            this.panel4.Controls.Add(this.bdropAtrib);
            this.panel4.Controls.Add(this.btxtConsultar);
            this.panel4.Controls.Add(this.GridCliente);
            this.panel4.Controls.Add(this.bbtnEnviar);
            this.panel4.Controls.Add(this.btxtCNPJ);
            this.panel4.Controls.Add(this.btxtEmail);
            this.panel4.Controls.Add(this.btxtTelefone);
            this.panel4.Controls.Add(this.btxtNome);
            this.panel4.Location = new System.Drawing.Point(213, 167);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(985, 430);
            this.panel4.TabIndex = 152;
            // 
            // bbtnCancelar
            // 
            this.bbtnCancelar.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnCancelar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnCancelar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnCancelar.BorderRadius = 0;
            this.bbtnCancelar.ButtonText = "Cancelar";
            this.bbtnCancelar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnCancelar.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnCancelar.Enabled = false;
            this.bbtnCancelar.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnCancelar.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnCancelar.Iconimage")));
            this.bbtnCancelar.Iconimage_right = null;
            this.bbtnCancelar.Iconimage_right_Selected = null;
            this.bbtnCancelar.Iconimage_Selected = null;
            this.bbtnCancelar.IconMarginLeft = 17;
            this.bbtnCancelar.IconMarginRight = 0;
            this.bbtnCancelar.IconRightVisible = true;
            this.bbtnCancelar.IconRightZoom = 0D;
            this.bbtnCancelar.IconVisible = true;
            this.bbtnCancelar.IconZoom = 45D;
            this.bbtnCancelar.IsTab = false;
            this.bbtnCancelar.Location = new System.Drawing.Point(734, 330);
            this.bbtnCancelar.Name = "bbtnCancelar";
            this.bbtnCancelar.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnCancelar.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnCancelar.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnCancelar.selected = false;
            this.bbtnCancelar.Size = new System.Drawing.Size(203, 48);
            this.bbtnCancelar.TabIndex = 158;
            this.bbtnCancelar.Text = "Cancelar";
            this.bbtnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnCancelar.Textcolor = System.Drawing.Color.White;
            this.bbtnCancelar.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnCancelar.Visible = false;
            this.bbtnCancelar.Click += new System.EventHandler(this.bbtnCancelar_Click);
            // 
            // btxtIE
            // 
            this.btxtIE.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtIE.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtIE.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtIE.BorderThickness = 1;
            this.btxtIE.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtIE.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtIE.ForeColor = System.Drawing.Color.DarkGray;
            this.btxtIE.isPassword = false;
            this.btxtIE.Location = new System.Drawing.Point(634, 251);
            this.btxtIE.Margin = new System.Windows.Forms.Padding(4);
            this.btxtIE.Name = "btxtIE";
            this.btxtIE.Size = new System.Drawing.Size(303, 44);
            this.btxtIE.TabIndex = 6;
            this.btxtIE.Text = "Inscrição Estadual";
            this.btxtIE.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtIE.Enter += new System.EventHandler(this.PlaceHolder_Enter);
            this.btxtIE.Leave += new System.EventHandler(this.PlaceHolder_Leave);
            // 
            // bbtnLimpar
            // 
            this.bbtnLimpar.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnLimpar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnLimpar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnLimpar.BorderRadius = 0;
            this.bbtnLimpar.ButtonText = "Limpar";
            this.bbtnLimpar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnLimpar.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnLimpar.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnLimpar.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnLimpar.Iconimage")));
            this.bbtnLimpar.Iconimage_right = null;
            this.bbtnLimpar.Iconimage_right_Selected = null;
            this.bbtnLimpar.Iconimage_Selected = null;
            this.bbtnLimpar.IconMarginLeft = 17;
            this.bbtnLimpar.IconMarginRight = 0;
            this.bbtnLimpar.IconRightVisible = true;
            this.bbtnLimpar.IconRightZoom = 0D;
            this.bbtnLimpar.IconVisible = true;
            this.bbtnLimpar.IconZoom = 40D;
            this.bbtnLimpar.IsTab = false;
            this.bbtnLimpar.Location = new System.Drawing.Point(416, 330);
            this.bbtnLimpar.Name = "bbtnLimpar";
            this.bbtnLimpar.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnLimpar.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnLimpar.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnLimpar.selected = false;
            this.bbtnLimpar.Size = new System.Drawing.Size(203, 48);
            this.bbtnLimpar.TabIndex = 7;
            this.bbtnLimpar.Text = "Limpar";
            this.bbtnLimpar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnLimpar.Textcolor = System.Drawing.Color.White;
            this.bbtnLimpar.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnLimpar.Click += new System.EventHandler(this.bbtnLimpar_Click);
            // 
            // bbtnAlterar
            // 
            this.bbtnAlterar.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnAlterar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnAlterar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnAlterar.BorderRadius = 0;
            this.bbtnAlterar.ButtonText = "Alterar";
            this.bbtnAlterar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnAlterar.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnAlterar.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnAlterar.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnAlterar.Iconimage")));
            this.bbtnAlterar.Iconimage_right = null;
            this.bbtnAlterar.Iconimage_right_Selected = null;
            this.bbtnAlterar.Iconimage_Selected = null;
            this.bbtnAlterar.IconMarginLeft = 17;
            this.bbtnAlterar.IconMarginRight = 0;
            this.bbtnAlterar.IconRightVisible = true;
            this.bbtnAlterar.IconRightZoom = 0D;
            this.bbtnAlterar.IconVisible = true;
            this.bbtnAlterar.IconZoom = 40D;
            this.bbtnAlterar.IsTab = false;
            this.bbtnAlterar.Location = new System.Drawing.Point(734, 330);
            this.bbtnAlterar.Name = "bbtnAlterar";
            this.bbtnAlterar.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnAlterar.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnAlterar.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnAlterar.selected = false;
            this.bbtnAlterar.Size = new System.Drawing.Size(203, 48);
            this.bbtnAlterar.TabIndex = 8;
            this.bbtnAlterar.Text = "Alterar";
            this.bbtnAlterar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnAlterar.Textcolor = System.Drawing.Color.White;
            this.bbtnAlterar.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnAlterar.Click += new System.EventHandler(this.bbtnAlterar_Click);
            // 
            // bbtnAutoCadastro
            // 
            this.bbtnAutoCadastro.Activecolor = System.Drawing.Color.White;
            this.bbtnAutoCadastro.BackColor = System.Drawing.Color.Transparent;
            this.bbtnAutoCadastro.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnAutoCadastro.BorderRadius = 0;
            this.bbtnAutoCadastro.ButtonText = "Enviar";
            this.bbtnAutoCadastro.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnAutoCadastro.DisabledColor = System.Drawing.Color.White;
            this.bbtnAutoCadastro.ForeColor = System.Drawing.Color.White;
            this.bbtnAutoCadastro.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnAutoCadastro.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnAutoCadastro.Iconimage")));
            this.bbtnAutoCadastro.Iconimage_right = null;
            this.bbtnAutoCadastro.Iconimage_right_Selected = null;
            this.bbtnAutoCadastro.Iconimage_Selected = null;
            this.bbtnAutoCadastro.IconMarginLeft = 17;
            this.bbtnAutoCadastro.IconMarginRight = 0;
            this.bbtnAutoCadastro.IconRightVisible = true;
            this.bbtnAutoCadastro.IconRightZoom = 0D;
            this.bbtnAutoCadastro.IconVisible = true;
            this.bbtnAutoCadastro.IconZoom = 40D;
            this.bbtnAutoCadastro.IsTab = false;
            this.bbtnAutoCadastro.Location = new System.Drawing.Point(401, 311);
            this.bbtnAutoCadastro.Name = "bbtnAutoCadastro";
            this.bbtnAutoCadastro.Normalcolor = System.Drawing.Color.Transparent;
            this.bbtnAutoCadastro.OnHovercolor = System.Drawing.Color.White;
            this.bbtnAutoCadastro.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnAutoCadastro.selected = false;
            this.bbtnAutoCadastro.Size = new System.Drawing.Size(203, 48);
            this.bbtnAutoCadastro.TabIndex = 147;
            this.bbtnAutoCadastro.Text = "Enviar";
            this.bbtnAutoCadastro.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnAutoCadastro.Textcolor = System.Drawing.Color.White;
            this.bbtnAutoCadastro.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnAutoCadastro.Click += new System.EventHandler(this.bbtnAutoCadastro_Click);
            // 
            // btxtConsultar
            // 
            this.btxtConsultar.BackColor = System.Drawing.Color.White;
            this.btxtConsultar.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btxtConsultar.BackgroundImage")));
            this.btxtConsultar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btxtConsultar.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtConsultar.Icon = ((System.Drawing.Image)(resources.GetObject("btxtConsultar.Icon")));
            this.btxtConsultar.Location = new System.Drawing.Point(48, 253);
            this.btxtConsultar.Name = "btxtConsultar";
            this.btxtConsultar.Size = new System.Drawing.Size(276, 42);
            this.btxtConsultar.TabIndex = 10;
            this.btxtConsultar.text = "Consultar";
            this.btxtConsultar.OnTextChange += new System.EventHandler(this.btxtConsultar_OnTextChange);
            this.btxtConsultar.Enter += new System.EventHandler(this.btxtConsultar_Enter);
            this.btxtConsultar.Leave += new System.EventHandler(this.btxtConsultar_Leave);
            // 
            // bbtnEnviar
            // 
            this.bbtnEnviar.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnEnviar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnEnviar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnEnviar.BorderRadius = 0;
            this.bbtnEnviar.ButtonText = "Enviar";
            this.bbtnEnviar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnEnviar.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnEnviar.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnEnviar.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnEnviar.Iconimage")));
            this.bbtnEnviar.Iconimage_right = null;
            this.bbtnEnviar.Iconimage_right_Selected = null;
            this.bbtnEnviar.Iconimage_Selected = null;
            this.bbtnEnviar.IconMarginLeft = 17;
            this.bbtnEnviar.IconMarginRight = 0;
            this.bbtnEnviar.IconRightVisible = true;
            this.bbtnEnviar.IconRightZoom = 0D;
            this.bbtnEnviar.IconVisible = true;
            this.bbtnEnviar.IconZoom = 40D;
            this.bbtnEnviar.IsTab = false;
            this.bbtnEnviar.Location = new System.Drawing.Point(48, 330);
            this.bbtnEnviar.Name = "bbtnEnviar";
            this.bbtnEnviar.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnEnviar.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnEnviar.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnEnviar.selected = false;
            this.bbtnEnviar.Size = new System.Drawing.Size(203, 48);
            this.bbtnEnviar.TabIndex = 1;
            this.bbtnEnviar.Text = "Enviar";
            this.bbtnEnviar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnEnviar.Textcolor = System.Drawing.Color.White;
            this.bbtnEnviar.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnEnviar.Click += new System.EventHandler(this.bbtnEnviar_Click);
            // 
            // label1
            // 
            this.label1.BackColor = System.Drawing.Color.White;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 22F);
            this.label1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label1.Location = new System.Drawing.Point(213, 92);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(985, 72);
            this.label1.TabIndex = 150;
            this.label1.Text = "Clientes Jurídicos";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.panel3.Controls.Add(this.lblUsu);
            this.panel3.Controls.Add(this.bbtnClienteJu);
            this.panel3.Controls.Add(this.bbtnHome);
            this.panel3.Controls.Add(this.bbtnServiço);
            this.panel3.Controls.Add(this.bbtnPedido);
            this.panel3.Controls.Add(this.bbtnFuncionario);
            this.panel3.Controls.Add(this.bbtnCliente);
            this.panel3.Controls.Add(this.bbtnLogoff);
            this.panel3.Location = new System.Drawing.Point(0, 92);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(213, 505);
            this.panel3.TabIndex = 149;
            // 
            // lblUsu
            // 
            this.lblUsu.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUsu.ForeColor = System.Drawing.Color.White;
            this.lblUsu.Location = new System.Drawing.Point(3, 376);
            this.lblUsu.Name = "lblUsu";
            this.lblUsu.Size = new System.Drawing.Size(207, 78);
            this.lblUsu.TabIndex = 877;
            this.lblUsu.Text = "Nome Usuário";
            this.lblUsu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // bbtnClienteJu
            // 
            this.bbtnClienteJu.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnClienteJu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnClienteJu.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.bbtnClienteJu.BorderRadius = 0;
            this.bbtnClienteJu.ButtonText = "Clientes Jurídicos";
            this.bbtnClienteJu.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnClienteJu.DisabledColor = System.Drawing.Color.Gray;
            this.bbtnClienteJu.Iconcolor = System.Drawing.Color.Transparent;
            this.bbtnClienteJu.Iconimage = ((System.Drawing.Image)(resources.GetObject("bbtnClienteJu.Iconimage")));
            this.bbtnClienteJu.Iconimage_right = null;
            this.bbtnClienteJu.Iconimage_right_Selected = null;
            this.bbtnClienteJu.Iconimage_Selected = null;
            this.bbtnClienteJu.IconMarginLeft = 0;
            this.bbtnClienteJu.IconMarginRight = 0;
            this.bbtnClienteJu.IconRightVisible = true;
            this.bbtnClienteJu.IconRightZoom = 0D;
            this.bbtnClienteJu.IconVisible = true;
            this.bbtnClienteJu.IconZoom = 40D;
            this.bbtnClienteJu.IsTab = false;
            this.bbtnClienteJu.Location = new System.Drawing.Point(0, 141);
            this.bbtnClienteJu.Name = "bbtnClienteJu";
            this.bbtnClienteJu.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(87)))), ((int)(((byte)(155)))));
            this.bbtnClienteJu.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnClienteJu.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnClienteJu.selected = false;
            this.bbtnClienteJu.Size = new System.Drawing.Size(213, 48);
            this.bbtnClienteJu.TabIndex = 16;
            this.bbtnClienteJu.Text = "Clientes Jurídicos";
            this.bbtnClienteJu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnClienteJu.Textcolor = System.Drawing.Color.White;
            this.bbtnClienteJu.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnClienteJu.Click += new System.EventHandler(this.bbtnClienteJu_Click);
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
            this.bbtnHome.Click += new System.EventHandler(this.bbtnHome_Click);
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
            this.bbtnServiço.Click += new System.EventHandler(this.bbtnServiço_Click);
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
            this.bbtnPedido.Click += new System.EventHandler(this.bbtnPedido_Click);
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
            this.bbtnFuncionario.Click += new System.EventHandler(this.bbtnFuncionario_Click);
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
            this.bbtnCliente.TabIndex = 786;
            this.bbtnCliente.Text = "Clientes Físicos";
            this.bbtnCliente.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnCliente.Textcolor = System.Drawing.Color.White;
            this.bbtnCliente.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnCliente.Click += new System.EventHandler(this.bbtnCliente_Click);
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
            this.bbtnLogoff.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnLogoff.OnHoverTextColor = System.Drawing.Color.White;
            this.bbtnLogoff.selected = false;
            this.bbtnLogoff.Size = new System.Drawing.Size(213, 48);
            this.bbtnLogoff.TabIndex = 876;
            this.bbtnLogoff.Text = "Logoff";
            this.bbtnLogoff.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnLogoff.Textcolor = System.Drawing.Color.White;
            this.bbtnLogoff.TextFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
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
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(213, 92);
            this.panel2.TabIndex = 8970;
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
            this.panel1.TabIndex = 148;
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
            this.bbtnMinimizar.Click += new System.EventHandler(this.bbtnMinimizar_Click);
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
            this.bbtnFechar.Click += new System.EventHandler(this.bbtnFechar_Click);
            // 
            // bunifuSeparator1
            // 
            this.bunifuSeparator1.BackColor = System.Drawing.Color.Transparent;
            this.bunifuSeparator1.LineColor = System.Drawing.Color.FromArgb(((int)(((byte)(105)))), ((int)(((byte)(105)))), ((int)(((byte)(105)))));
            this.bunifuSeparator1.LineThickness = 1;
            this.bunifuSeparator1.Location = new System.Drawing.Point(213, 149);
            this.bunifuSeparator1.Name = "bunifuSeparator1";
            this.bunifuSeparator1.Size = new System.Drawing.Size(985, 35);
            this.bunifuSeparator1.TabIndex = 151;
            this.bunifuSeparator1.Transparency = 255;
            this.bunifuSeparator1.Vertical = false;
            // 
            // ClienteJu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1198, 597);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.bunifuSeparator1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ClienteJu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ClienteJu";
            this.Load += new System.EventHandler(this.Cliente_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GridCliente)).EndInit();
            this.panel4.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private Bunifu.Framework.UI.BunifuFlatButton bbtnLimpar;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnAlterar;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnAutoCadastro;
        private Bunifu.Framework.UI.BunifuDropdown bdropAtrib;
        private Bunifu.Framework.UI.BunifuTextbox btxtConsultar;
        private System.Windows.Forms.DataGridView GridCliente;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnEnviar;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtCNPJ;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtEmail;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtTelefone;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtNome;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnLogoff;
        private System.Windows.Forms.Panel panel4;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnFuncionario;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel3;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnClienteJu;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnHome;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnServiço;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnPedido;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnCliente;
        private System.Windows.Forms.Label lbl_tit;
        private System.Windows.Forms.PictureBox pictureBox1;
        private Bunifu.Framework.UI.BunifuThinButton2 bbtnMinimizar;
        private Bunifu.Framework.UI.BunifuThinButton2 bbtnFechar;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel1;
        private Bunifu.Framework.UI.BunifuSeparator bunifuSeparator1;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtIE;
        private Bunifu.Framework.UI.BunifuFlatButton bbtnCancelar;
        private System.Windows.Forms.Label lblUsu;
    }
}