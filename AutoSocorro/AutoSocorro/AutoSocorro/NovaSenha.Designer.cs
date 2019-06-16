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
            this.lblMensagem = new System.Windows.Forms.Label();
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
            this.lblTitulo.Size = new System.Drawing.Size(358, 46);
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
            this.btxtSenha1.Size = new System.Drawing.Size(297, 44);
            this.btxtSenha1.TabIndex = 2;
            this.btxtSenha1.Text = "Nova Senha";
            this.btxtSenha1.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
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
            this.btxtSenha2.Location = new System.Drawing.Point(28, 126);
            this.btxtSenha2.Margin = new System.Windows.Forms.Padding(4);
            this.btxtSenha2.Name = "btxtSenha2";
            this.btxtSenha2.Size = new System.Drawing.Size(297, 44);
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
            this.bbtnCadastrar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bbtnCadastrar.ForeColor = System.Drawing.Color.White;
            this.bbtnCadastrar.Location = new System.Drawing.Point(117, 208);
            this.bbtnCadastrar.Name = "bbtnCadastrar";
            this.bbtnCadastrar.Size = new System.Drawing.Size(120, 37);
            this.bbtnCadastrar.TabIndex = 1;
            this.bbtnCadastrar.Text = "Cadastrar";
            this.bbtnCadastrar.UseVisualStyleBackColor = false;
            this.bbtnCadastrar.Click += new System.EventHandler(this.bbtnCadastrar_Click);
            // 
            // lblMensagem
            // 
            this.lblMensagem.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMensagem.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lblMensagem.Location = new System.Drawing.Point(28, 179);
            this.lblMensagem.Name = "lblMensagem";
            this.lblMensagem.Size = new System.Drawing.Size(297, 23);
            this.lblMensagem.TabIndex = 14;
            this.lblMensagem.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // NovaSenha
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(358, 257);
            this.Controls.Add(this.lblMensagem);
            this.Controls.Add(this.bbtnCadastrar);
            this.Controls.Add(this.btxtSenha2);
            this.Controls.Add(this.btxtSenha1);
            this.Controls.Add(this.lblTitulo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "NovaSenha";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "NovaSenha";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lblTitulo;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtSenha1;
        private Bunifu.Framework.UI.BunifuMetroTextbox btxtSenha2;
        private System.Windows.Forms.Button bbtnCadastrar;
        private System.Windows.Forms.Label lblMensagem;
    }
}