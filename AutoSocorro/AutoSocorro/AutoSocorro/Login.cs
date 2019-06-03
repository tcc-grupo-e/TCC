using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace AutoSocorro
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void bbtnSair_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        //
        //Criptografa a Senha
        //
        public String criptografarSenha(String senha)
        {
            try
            {
                //Criptografa a senha
                System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create();
                byte[] inputbytes = System.Text.Encoding.ASCII.GetBytes(senha);
                byte[] hash = md5.ComputeHash(inputbytes);
                StringBuilder senhaCriptografada = new StringBuilder();
                for (int i = 0; i < hash.Length; i++)
                {
                    senhaCriptografada.Append(hash[i].ToString("X2"));
                }
                return senhaCriptografada.ToString();
            }
            catch
            {
                return null;
            }
        }
        //
        //Botão Entrar
        //
        private void bbtnEntrar_Click(object sender, EventArgs e)
        {
            if (btxtLogin.Text.Equals("Usuário") || btxtLogin.Text.Equals("") && btxtSenha.Text.Equals("Senha") || btxtSenha.Text.Equals(""))
            {
                lblsenhainc.Text = "Preencha os campos";
                lblsenhainc.Visible = true;
            }
            else if (btxtLogin.Text.Equals("Usuário") || btxtLogin.Text.Equals(""))
            {
                lblsenhainc.Text = "Digite um usuário";
                lblsenhainc.Visible = true;
            }
            else if (btxtSenha.Text.Equals("Senha") || btxtSenha.Text.Equals(""))
            {
                lblsenhainc.Text = "Digite a senha";
                lblsenhainc.Visible = true;
            }
            else
            {
                LoginBLL loBLL = new LoginBLL();
                //Verifica o Login e a Senha
                int log = loBLL.buscarUsuarios(btxtLogin.Text, criptografarSenha(btxtSenha.Text));
                if (log != 0)
                {
                    if (log == 1)
                        loBLL.setNivelAcesso("1");
                    else if (log == 2)
                        loBLL.setNivelAcesso("2");
                    else
                    {
                        MensagemBLL ms = new MensagemBLL();
                        ms.setTitulo("Mensagem");
                        ms.setMensagem("Você não tem permissão !!");
                    }
                    Loading load = new Loading();
                    load.Show();
                    this.Hide();
                }
                else
                {
                    btxtLogin.BorderColorIdle = Color.Red;
                    btxtSenha.BorderColorIdle = Color.Red;
                    btxtLogin.BorderColorFocused = Color.Red;
                    btxtSenha.BorderColorFocused = Color.Red;
                    btxtLogin.BorderColorMouseHover = Color.Red;
                    btxtSenha.BorderColorMouseHover = Color.Red;
                    lblsenhainc.Visible = true;
                }                
            }
        }
        //
        //PlaceHolder
        //
        String[] txt = { "Sair", "Usuário" };
        private void PlaceHolder_Enter(object sender, EventArgs e)
        {
            Bunifu.Framework.UI.BunifuMetroTextbox btxt = (Bunifu.Framework.UI.BunifuMetroTextbox)sender;
            if (btxt.Text.Equals(txt[btxt.TabIndex - 1]))
                btxt.Text = "";
        }
        private void PlaceHolder_Leave(object sender, EventArgs e)
        {
            Bunifu.Framework.UI.BunifuMetroTextbox btxt = (Bunifu.Framework.UI.BunifuMetroTextbox)sender;
            if (btxt.Text.Equals(""))
                btxt.Text = txt[btxt.TabIndex - 1];
        }

        private void btxtSenha_Enter(object sender, EventArgs e)
        {
            if (btxtSenha.Text.Equals("Senha"))
            {
                btxtSenha.Text = "";
                btxtSenha.isPassword = true;
            }
        }

        private void btxtSenha_Leave(object sender, EventArgs e)
        {
            if (btxtSenha.Text.Equals(""))
            {
                btxtSenha.Text = "Senha";
                btxtSenha.isPassword = false;
            }
        }
        //
        //Evento Load
        //
        private void Login_Load(object sender, EventArgs e)
        {
            LoginBLL loBLL = new LoginBLL();

            loBLL.setUsuario("");
            loBLL.setSenha("");
            loBLL.setNivelAcesso("");
        }
        //
        //Enter ativa o Botão Entrar
        //
        private void Login_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                bbtnEntrar_Click(sender, e);
            }
        }

        private void btxtLogin_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                bbtnEntrar_Click(sender, e);
            }
        }

        private void btxtSenha_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                bbtnEntrar_Click(sender, e);
            }
        }

        private void bbtnSair_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                bbtnEntrar_Click(sender, e);
            }
        }
    }
}
