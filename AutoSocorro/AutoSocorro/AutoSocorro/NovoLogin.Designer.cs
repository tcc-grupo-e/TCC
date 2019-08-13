namespace AutoSocorro
{
    partial class NovoLogin
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
            this.bbtnCadastrar = new System.Windows.Forms.Button();
            this.btxtLogin = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.lblMensagem = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // bbtnCadastrar
            // 
            this.bbtnCadastrar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnCadastrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnCadastrar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.bbtnCadastrar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnCadastrar.ForeColor = System.Drawing.Color.White;
            this.bbtnCadastrar.Location = new System.Drawing.Point(28, 153);
            this.bbtnCadastrar.Name = "bbtnCadastrar";
            this.bbtnCadastrar.Size = new System.Drawing.Size(139, 37);
            this.bbtnCadastrar.TabIndex = 18;
            this.bbtnCadastrar.Text = "Cadastrar";
            this.bbtnCadastrar.UseVisualStyleBackColor = false;
            this.bbtnCadastrar.Click += new System.EventHandler(this.bbtnCadastrar_Click);
            // 
            // btxtLogin
            // 
            this.btxtLogin.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtLogin.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtLogin.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtLogin.BorderThickness = 1;
            this.btxtLogin.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtLogin.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtLogin.ForeColor = System.Drawing.Color.DarkGray;
            this.btxtLogin.isPassword = false;
            this.btxtLogin.Location = new System.Drawing.Point(28, 65);
            this.btxtLogin.Margin = new System.Windows.Forms.Padding(4);
            this.btxtLogin.Name = "btxtLogin";
            this.btxtLogin.Size = new System.Drawing.Size(316, 44);
            this.btxtLogin.TabIndex = 19;
            this.btxtLogin.Text = "Novo Usuário";
            this.btxtLogin.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtLogin.OnValueChanged += new System.EventHandler(this.btxtSenha1_OnValueChanged);
            this.btxtLogin.Enter += new System.EventHandler(this.btxtLogin_Enter);
            this.btxtLogin.Leave += new System.EventHandler(this.btxtLogin_Leave);
            // 
            // lblTitulo
            // 
            this.lblTitulo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.lblTitulo.Dock = System.Windows.Forms.DockStyle.Top;
            this.lblTitulo.Font = new System.Drawing.Font("Century Gothic", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.ForeColor = System.Drawing.Color.White;
            this.lblTitulo.Location = new System.Drawing.Point(0, 0);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(374, 46);
            this.lblTitulo.TabIndex = 21;
            this.lblTitulo.Text = "Novo Login";
            this.lblTitulo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblMensagem
            // 
            this.lblMensagem.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Bold);
            this.lblMensagem.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(70)))), ((int)(((byte)(52)))));
            this.lblMensagem.Location = new System.Drawing.Point(31, 111);
            this.lblMensagem.Name = "lblMensagem";
            this.lblMensagem.Size = new System.Drawing.Size(312, 35);
            this.lblMensagem.TabIndex = 22;
            this.lblMensagem.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.button1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(205, 153);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(139, 37);
            this.button1.TabIndex = 23;
            this.button1.Text = "Manter Usuário";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // NovoLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(374, 205);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.lblMensagem);
            this.Controls.Add(this.bbtnCadastrar);
            this.Controls.Add(this.btxtLogin);
            this.Controls.Add(this.lblTitulo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "NovoLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.NovoLogin_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button bbtnCadastrar;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtLogin;
        private System.Windows.Forms.Label lblTitulo;
        private System.Windows.Forms.Label lblMensagem;
        private System.Windows.Forms.Button button1;
    }
}