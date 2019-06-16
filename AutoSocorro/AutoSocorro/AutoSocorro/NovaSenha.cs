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
    public partial class NovaSenha : Form
    {
        public NovaSenha()
        {
            InitializeComponent();
        }

        private void btxtSenha1_Leave(object sender, EventArgs e)
        {
            if (btxtSenha1.Text.Equals(""))
                btxtSenha1.Text = "Nova Senha";
            btxtSenha1.ForeColor = Color.DarkGray;
            btxtSenha1.isPassword = false;
        }

        private void btxtSenha1_Enter(object sender, EventArgs e)
        {
            if (btxtSenha1.Text.Equals("Nova Senha"))
                btxtSenha1.Text = "";
            btxtSenha1.ForeColor = Color.FromArgb(64, 64, 64);
            btxtSenha1.isPassword = true;
        }

        private void btxtSenha2_Leave(object sender, EventArgs e)
        {
            if (btxtSenha2.Text.Equals(""))
                btxtSenha2.Text = "Repita A Nova Senha";
            btxtSenha2.ForeColor = Color.DarkGray;
            btxtSenha2.isPassword = false;
        }

        private void btxtSenha2_Enter(object sender, EventArgs e)
        {
            if (btxtSenha2.Text.Equals("Repita A Nova Senha"))
                btxtSenha2.Text = "";
            btxtSenha2.ForeColor = Color.FromArgb(64, 64, 64);
            btxtSenha2.isPassword = true;
        }

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

        private void bbtnCadastrar_Click(object sender, EventArgs e)
        {
            if (btxtSenha1.Text.Equals(btxtSenha2.Text))
            {
                if (btxtSenha1.Text.Length > 6)
                {
                    LoginBLL loBLL = new LoginBLL();
                    if(loBLL.alterar_semha(criptografarSenha(btxtSenha1.Text), loBLL.getId()))
                    {
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Senha ALterada Com Sucesso!");
                        mBLL.setTitulo("Mensagem");
                        Mensagem ms = new Mensagem();
                        ms.ShowDialog();

                        Home ho = new Home();
                        ho.Show();
                        this.Hide();
                    }
                    else
                    {
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Senha Não Alterada!");
                        mBLL.setTitulo("Mensagem");
                        Mensagem ms = new Mensagem();
                        ms.ShowDialog();
                    }
                }
                else
                {
                    lblMensagem.Text = "Escolha uma senha com mais de 6 caracteres.";
                }
            }
            else
            {
                lblMensagem.Text = "As senhas são diferentes.";
            }
        }
    }
}
