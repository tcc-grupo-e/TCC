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
            {
                btxtSenha1.Text = "Nova Senha";
                btxtSenha1.isPassword = false;
                btxtSenha1.ForeColor = Color.DarkGray;
            }
            else
                btxtSenha1.isPassword = true;
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
            {
                btxtSenha2.Text = "Repita A Nova Senha";
                btxtSenha2.isPassword = false;
                btxtSenha2.ForeColor = Color.DarkGray;
            }
            else
                btxtSenha2.isPassword = true;
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
            //try
            //{
            //    //Criptografa a senha
            //    System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create();
            //    byte[] inputbytes = System.Text.Encoding.ASCII.GetBytes(senha);
            //    byte[] hash = md5.ComputeHash(inputbytes);
            //    StringBuilder senhaCriptografada = new StringBuilder();
            //    for (int i = 0; i < hash.Length; i++)
            //    {
            //        senhaCriptografada.Append(hash[i].ToString("X2"));
            //    }
            //    return senhaCriptografada.ToString();
            //}
            //catch
            //{
            //    return null;
            //}

            return senha;
        }

        private void bbtnCadastrar_Click(object sender, EventArgs e)
        {
            if (btxtSenha1.Text.Equals(btxtSenha2.Text))
            {
                if (btxtSenha1.Text.Length >= 8)
                {
                    if (Mai || Num)
                    {
                        LoginBLL loBLL = new LoginBLL();
                        if (loBLL.alterar_senha(criptografarSenha(btxtSenha1.Text), loBLL.getId()))
                        {
                            MensagemBLL mBLL = new MensagemBLL();
                            mBLL.setMensagem("Senha Alterada Com Sucesso!");
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
                        if (!Mai)
                            lblIgualdade.Text = "Insira ao menos uma letra maiúscula na sua senha.";
                        else if (!Num)
                            lblIgualdade.Text = "Insira ao menos um número na sua senha.";
                    }
                }
                else
                    lblIgualdade.Text = "Escolha uma senha com mais de 8 caracteres.";
            }
            else
                lblIgualdade.Text = "As senhas são diferentes.";
        }

        bool Num = false;
        bool Mai = false;
        bool Oito = false;
        int val = 0;
        int tam = 0;
        List<bool> valid = new List<bool>();

        private void btxtSenha1_OnValueChanged(object sender, EventArgs e)
        {
            if (!btxtSenha1.Text.Equals(""))
            {
                if (btxtSenha1.Text.Length <= tam)
                {
                    Num = false;
                    Mai = false;
                    Oito = false;
                    tam = btxtSenha1.Text.Length - 1;
                    valid.Clear();
                }
                else
                    tam++;

                for (int i = 0; i < btxtSenha1.Text.Length; i++)
                {
                    if (!Num)
                    {
                        if (Char.IsNumber(btxtSenha1.Text[i]))
                        {
                            Num = true;
                            valid.Add(true);
                        }
                        else
                            Num = false;
                    }
                    if (!Mai)
                    {
                        if (Char.IsUpper(btxtSenha1.Text[i]))
                        {
                            Mai = true;
                            valid.Add(true);
                        }
                        else
                            Mai = false;
                    }
                    if (!Oito)
                    {
                        if (btxtSenha1.Text.Length >= 8)
                        {
                            Oito = true;
                            valid.Add(true);
                        }
                        else
                            Oito = false;
                    }
                }

                if (valid.Count <= 1 || btxtSenha1.Text.Length == 0)
                {
                    lblNS.Text = "Nível da senha: Fraca!";
                    lblNS.ForeColor = Color.FromArgb(235, 70, 52);
                }
                else if (valid.Count == 2)
                {
                    lblNS.Text = "Nível da senha: Média!";
                    lblNS.ForeColor = Color.DarkOrange;
                }
                else if (valid.Count >= 3)
                {
                    lblNS.Text = "Nível da senha: Forte!";
                    lblNS.ForeColor = Color.FromArgb(0, 192, 0);
                }
                else
                {
                    lblNS.Text = "Nível da senha:";
                    lblNS.ForeColor = Color.Black;
                }

                if (btxtSenha1.Text.Equals("Nova Senha"))
                {
                    lblNS.Text = "Nível da senha:";
                    lblNS.ForeColor = Color.Black;
                }
            }
        }

        private void NovaSenha_Load(object sender, EventArgs e)
        {
            LoginBLL loBll = new LoginBLL();

            if (loBll.getNoLo())
            {
                bbtnCadastrar.Location = new Point(28,224);
                bbtnMSenha.Visible = true;
                bbtnMSenha.Enabled = true;
                loBll.setNoLo(false);
            }
        }

        private void bbtnMSenha_Click(object sender, EventArgs e)
        {
            Home ho = new Home();
            ho.Show();
            this.Hide();
        }
    }
}
