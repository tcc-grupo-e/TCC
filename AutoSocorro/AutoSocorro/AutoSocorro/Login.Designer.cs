namespace AutoSocorro
{
    partial class Login
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Login));
            this.lblsenhainc = new System.Windows.Forms.Label();
            this.bbtnEntrar = new Bunifu.Framework.UI.BunifuThinButton2();
            this.bbtnSair = new Bunifu.Framework.UI.BunifuThinButton2();
            this.btxtSenha = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.btxtLogin = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.lbl_tit = new System.Windows.Forms.Label();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // lblsenhainc
            // 
            this.lblsenhainc.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblsenhainc.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lblsenhainc.Location = new System.Drawing.Point(160, 186);
            this.lblsenhainc.Name = "lblsenhainc";
            this.lblsenhainc.Size = new System.Drawing.Size(270, 17);
            this.lblsenhainc.TabIndex = 16;
            this.lblsenhainc.Text = "Usuário/Senha incorretos";
            this.lblsenhainc.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblsenhainc.Visible = false;
            // 
            // bbtnEntrar
            // 
            this.bbtnEntrar.ActiveBorderThickness = 1;
            this.bbtnEntrar.ActiveCornerRadius = 1;
            this.bbtnEntrar.ActiveFillColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnEntrar.ActiveForecolor = System.Drawing.Color.White;
            this.bbtnEntrar.ActiveLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.bbtnEntrar.BackColor = System.Drawing.Color.White;
            this.bbtnEntrar.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("bbtnEntrar.BackgroundImage")));
            this.bbtnEntrar.ButtonText = "Entrar";
            this.bbtnEntrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnEntrar.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnEntrar.ForeColor = System.Drawing.Color.Black;
            this.bbtnEntrar.IdleBorderThickness = 1;
            this.bbtnEntrar.IdleCornerRadius = 1;
            this.bbtnEntrar.IdleFillColor = System.Drawing.Color.White;
            this.bbtnEntrar.IdleForecolor = System.Drawing.Color.Black;
            this.bbtnEntrar.IdleLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.bbtnEntrar.Location = new System.Drawing.Point(298, 211);
            this.bbtnEntrar.Margin = new System.Windows.Forms.Padding(8);
            this.bbtnEntrar.Name = "bbtnEntrar";
            this.bbtnEntrar.Size = new System.Drawing.Size(132, 40);
            this.bbtnEntrar.TabIndex = 4;
            this.bbtnEntrar.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnEntrar.Click += new System.EventHandler(this.bbtnEntrar_Click);
            // 
            // bbtnSair
            // 
            this.bbtnSair.ActiveBorderThickness = 1;
            this.bbtnSair.ActiveCornerRadius = 1;
            this.bbtnSair.ActiveFillColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(119)))), ((int)(((byte)(189)))));
            this.bbtnSair.ActiveForecolor = System.Drawing.Color.White;
            this.bbtnSair.ActiveLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.bbtnSair.BackColor = System.Drawing.Color.White;
            this.bbtnSair.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("bbtnSair.BackgroundImage")));
            this.bbtnSair.ButtonText = "Sair";
            this.bbtnSair.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnSair.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnSair.ForeColor = System.Drawing.Color.Black;
            this.bbtnSair.IdleBorderThickness = 1;
            this.bbtnSair.IdleCornerRadius = 1;
            this.bbtnSair.IdleFillColor = System.Drawing.Color.White;
            this.bbtnSair.IdleForecolor = System.Drawing.Color.Black;
            this.bbtnSair.IdleLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.bbtnSair.Location = new System.Drawing.Point(17, 211);
            this.bbtnSair.Margin = new System.Windows.Forms.Padding(8);
            this.bbtnSair.Name = "bbtnSair";
            this.bbtnSair.Size = new System.Drawing.Size(132, 40);
            this.bbtnSair.TabIndex = 1;
            this.bbtnSair.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.bbtnSair.Click += new System.EventHandler(this.bbtnSair_Click);
            this.bbtnSair.KeyDown += new System.Windows.Forms.KeyEventHandler(this.bbtnSair_KeyDown);
            // 
            // btxtSenha
            // 
            this.btxtSenha.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.btxtSenha.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.btxtSenha.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.btxtSenha.BorderThickness = 1;
            this.btxtSenha.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtSenha.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtSenha.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtSenha.isPassword = false;
            this.btxtSenha.Location = new System.Drawing.Point(156, 133);
            this.btxtSenha.Margin = new System.Windows.Forms.Padding(4);
            this.btxtSenha.Name = "btxtSenha";
            this.btxtSenha.Size = new System.Drawing.Size(274, 44);
            this.btxtSenha.TabIndex = 3;
            this.btxtSenha.Text = "Senha";
            this.btxtSenha.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtSenha.Enter += new System.EventHandler(this.btxtSenha_Enter);
            this.btxtSenha.KeyDown += new System.Windows.Forms.KeyEventHandler(this.btxtSenha_KeyDown);
            this.btxtSenha.Leave += new System.EventHandler(this.btxtSenha_Leave);
            // 
            // btxtLogin
            // 
            this.btxtLogin.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.btxtLogin.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.btxtLogin.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(78)))), ((int)(((byte)(162)))));
            this.btxtLogin.BorderThickness = 1;
            this.btxtLogin.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtLogin.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtLogin.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtLogin.isPassword = false;
            this.btxtLogin.Location = new System.Drawing.Point(156, 81);
            this.btxtLogin.Margin = new System.Windows.Forms.Padding(4);
            this.btxtLogin.Name = "btxtLogin";
            this.btxtLogin.Size = new System.Drawing.Size(274, 44);
            this.btxtLogin.TabIndex = 2;
            this.btxtLogin.Text = "Usuário";
            this.btxtLogin.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtLogin.Enter += new System.EventHandler(this.PlaceHolder_Enter);
            this.btxtLogin.KeyDown += new System.Windows.Forms.KeyEventHandler(this.btxtLogin_KeyDown);
            this.btxtLogin.Leave += new System.EventHandler(this.PlaceHolder_Leave);
            // 
            // lbl_tit
            // 
            this.lbl_tit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.lbl_tit.Dock = System.Windows.Forms.DockStyle.Top;
            this.lbl_tit.Font = new System.Drawing.Font("Century Gothic", 27.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_tit.ForeColor = System.Drawing.Color.White;
            this.lbl_tit.Location = new System.Drawing.Point(0, 0);
            this.lbl_tit.Name = "lbl_tit";
            this.lbl_tit.Size = new System.Drawing.Size(451, 61);
            this.lbl_tit.TabIndex = 11;
            this.lbl_tit.Text = "Auto Socorro";
            this.lbl_tit.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::AutoSocorro.Properties.Resources.Logo;
            this.pictureBox2.Location = new System.Drawing.Point(17, 105);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(127, 46);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 0;
            this.pictureBox2.TabStop = false;
            // 
            // bunifuDragControl1
            // 
            this.bunifuDragControl1.Fixed = true;
            this.bunifuDragControl1.Horizontal = true;
            this.bunifuDragControl1.TargetControl = this.lbl_tit;
            this.bunifuDragControl1.Vertical = true;
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(451, 259);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.lblsenhainc);
            this.Controls.Add(this.bbtnEntrar);
            this.Controls.Add(this.bbtnSair);
            this.Controls.Add(this.btxtSenha);
            this.Controls.Add(this.btxtLogin);
            this.Controls.Add(this.lbl_tit);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Login";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Login";
            this.Load += new System.EventHandler(this.Login_Load);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.Login_KeyDown);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lblsenhainc;
        private Bunifu.Framework.UI.BunifuThinButton2 bbtnEntrar;
        private Bunifu.Framework.UI.BunifuThinButton2 bbtnSair;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtSenha;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtLogin;
        private System.Windows.Forms.Label lbl_tit;
        private System.Windows.Forms.PictureBox pictureBox2;
        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
    }
}