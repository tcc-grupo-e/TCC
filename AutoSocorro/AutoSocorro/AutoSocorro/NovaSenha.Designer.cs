namespace AutoSocorro
{
    partial class NovaSenha
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
            this.lblTitulo = new System.Windows.Forms.Label();
            this.btxtSenha1 = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.btxtSenha2 = new Bunifu.Framework.UI.BunifuMetroTextbox();
            this.bbtnCadastrar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.lblNS = new System.Windows.Forms.Label();
            this.lblMensagem = new System.Windows.Forms.Label();
            this.lblIgualdade = new System.Windows.Forms.Label();
            this.bbtnMSenha = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblTitulo
            // 
            this.lblTitulo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.lblTitulo.Dock = System.Windows.Forms.DockStyle.Top;
            this.lblTitulo.Font = new System.Drawing.Font("Century Gothic", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.ForeColor = System.Drawing.Color.White;
            this.lblTitulo.Location = new System.Drawing.Point(0, 0);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(607, 46);
            this.lblTitulo.TabIndex = 13;
            this.lblTitulo.Text = "Nova Senha";
            this.lblTitulo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btxtSenha1
            // 
            this.btxtSenha1.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtSenha1.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtSenha1.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtSenha1.BorderThickness = 1;
            this.btxtSenha1.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtSenha1.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtSenha1.ForeColor = System.Drawing.Color.DarkGray;
            this.btxtSenha1.isPassword = false;
            this.btxtSenha1.Location = new System.Drawing.Point(28, 74);
            this.btxtSenha1.Margin = new System.Windows.Forms.Padding(4);
            this.btxtSenha1.Name = "btxtSenha1";
            this.btxtSenha1.Size = new System.Drawing.Size(316, 44);
            this.btxtSenha1.TabIndex = 2;
            this.btxtSenha1.Text = "Nova Senha";
            this.btxtSenha1.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtSenha1.OnValueChanged += new System.EventHandler(this.btxtSenha1_OnValueChanged);
            this.btxtSenha1.Enter += new System.EventHandler(this.btxtSenha1_Enter);
            this.btxtSenha1.Leave += new System.EventHandler(this.btxtSenha1_Leave);
            // 
            // btxtSenha2
            // 
            this.btxtSenha2.BorderColorFocused = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtSenha2.BorderColorIdle = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.btxtSenha2.BorderColorMouseHover = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.btxtSenha2.BorderThickness = 1;
            this.btxtSenha2.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.btxtSenha2.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btxtSenha2.ForeColor = System.Drawing.Color.DarkGray;
            this.btxtSenha2.isPassword = false;
            this.btxtSenha2.Location = new System.Drawing.Point(28, 162);
            this.btxtSenha2.Margin = new System.Windows.Forms.Padding(4);
            this.btxtSenha2.Name = "btxtSenha2";
            this.btxtSenha2.Size = new System.Drawing.Size(316, 44);
            this.btxtSenha2.TabIndex = 3;
            this.btxtSenha2.Text = "Repita A Nova Senha";
            this.btxtSenha2.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.btxtSenha2.Enter += new System.EventHandler(this.btxtSenha2_Enter);
            this.btxtSenha2.Leave += new System.EventHandler(this.btxtSenha2_Leave);
            // 
            // bbtnCadastrar
            // 
            this.bbtnCadastrar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnCadastrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnCadastrar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.bbtnCadastrar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnCadastrar.ForeColor = System.Drawing.Color.White;
            this.bbtnCadastrar.Location = new System.Drawing.Point(218, 244);
            this.bbtnCadastrar.Name = "bbtnCadastrar";
            this.bbtnCadastrar.Size = new System.Drawing.Size(139, 37);
            this.bbtnCadastrar.TabIndex = 1;
            this.bbtnCadastrar.Text = "Cadastrar";
            this.bbtnCadastrar.UseVisualStyleBackColor = false;
            this.bbtnCadastrar.Click += new System.EventHandler(this.bbtnCadastrar_Click);
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.DimGray;
            this.label1.Location = new System.Drawing.Point(359, 74);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(251, 132);
            this.label1.TabIndex = 14;
            this.label1.Text = "Use 8 ou mais caracteres com uma combinação de letras maiusculas e minúsculas, nú" +
    "meros e símbolos.";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lblNS
            // 
            this.lblNS.AutoSize = true;
            this.lblNS.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblNS.ForeColor = System.Drawing.Color.Black;
            this.lblNS.Location = new System.Drawing.Point(32, 124);
            this.lblNS.Name = "lblNS";
            this.lblNS.Size = new System.Drawing.Size(113, 16);
            this.lblNS.TabIndex = 15;
            this.lblNS.Text = "Nível da senha: ";
            // 
            // lblMensagem
            // 
            this.lblMensagem.AutoSize = true;
            this.lblMensagem.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblMensagem.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(70)))), ((int)(((byte)(52)))));
            this.lblMensagem.Location = new System.Drawing.Point(32, 210);
            this.lblMensagem.Name = "lblMensagem";
            this.lblMensagem.Size = new System.Drawing.Size(0, 16);
            this.lblMensagem.TabIndex = 16;
            this.lblMensagem.Visible = false;
            // 
            // lblIgualdade
            // 
            this.lblIgualdade.AutoSize = true;
            this.lblIgualdade.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblIgualdade.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(70)))), ((int)(((byte)(52)))));
            this.lblIgualdade.Location = new System.Drawing.Point(32, 211);
            this.lblIgualdade.Name = "lblIgualdade";
            this.lblIgualdade.Size = new System.Drawing.Size(0, 16);
            this.lblIgualdade.TabIndex = 17;
            // 
            // bbtnMSenha
            // 
            this.bbtnMSenha.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(136)))), ((int)(((byte)(209)))));
            this.bbtnMSenha.Cursor = System.Windows.Forms.Cursors.Hand;
            this.bbtnMSenha.Enabled = false;
            this.bbtnMSenha.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.bbtnMSenha.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnMSenha.ForeColor = System.Drawing.Color.White;
            this.bbtnMSenha.Location = new System.Drawing.Point(435, 224);
            this.bbtnMSenha.Name = "bbtnMSenha";
            this.bbtnMSenha.Size = new System.Drawing.Size(139, 37);
            this.bbtnMSenha.TabIndex = 18;
            this.bbtnMSenha.Text = "Manter Senha";
            this.bbtnMSenha.UseVisualStyleBackColor = false;
            this.bbtnMSenha.Visible = false;
            this.bbtnMSenha.Click += new System.EventHandler(this.bbtnMSenha_Click);
            // 
            // NovaSenha
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(607, 288);
            this.Controls.Add(this.bbtnMSenha);
            this.Controls.Add(this.lblIgualdade);
            this.Controls.Add(this.lblMensagem);
            this.Controls.Add(this.lblNS);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.bbtnCadastrar);
            this.Controls.Add(this.btxtSenha2);
            this.Controls.Add(this.btxtSenha1);
            this.Controls.Add(this.lblTitulo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "NovaSenha";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "NovaSenha";
            this.Load += new System.EventHandler(this.NovaSenha_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblTitulo;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtSenha1;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtSenha2;
        private System.Windows.Forms.Button bbtnCadastrar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblNS;
        private System.Windows.Forms.Label lblMensagem;
        private System.Windows.Forms.Label lblIgualdade;
        private System.Windows.Forms.Button bbtnMSenha;
    }
}