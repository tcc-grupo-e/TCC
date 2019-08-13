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
    public partial class NovoLogin : Form
    {
        public NovoLogin()
        {
            InitializeComponent();
        }

        private void btxtSenha1_OnValueChanged(object sender, EventArgs e)
        {

        }

        private void btxtLogin_Leave(object sender, EventArgs e)
        {
            if (btxtLogin.Text.Equals(""))
            {
                btxtLogin.Text = "Novo Usuário";
                btxtLogin.ForeColor = Color.DarkGray;
            }
        }

        private void btxtLogin_Enter(object sender, EventArgs e)
        {
            if (btxtLogin.Text.Equals("Novo Usuário"))
                btxtLogin.Text = "";
            btxtLogin.ForeColor = Color.FromArgb(64, 64, 64);
        }

        private void bbtnCadastrar_Click(object sender, EventArgs e)
        {
            LoginBLL loBLL = new LoginBLL();

            if (btxtLogin.Text.Length >= 6)
            {
                if (loBLL.alterar_login(btxtLogin.Text, loBLL.getId()))
                {
                    NovaSenha ns = new NovaSenha();
                    ns.Show();
                    this.Hide();
                }
                else
                {
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Login Não Alterado!");
                    mBLL.setTitulo("Mensagem");
                    Mensagem ms = new Mensagem();
                    ms.ShowDialog();
                }
            }
            else
                lblMensagem.Text = "O nome de usuário deve conter mais de 5 caracteres";
        }

        private void NovoLogin_Load(object sender, EventArgs e)
        {
            LoginBLL loBLL = new LoginBLL();
            loBLL.setNoLo(true);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            NovaSenha ns = new NovaSenha();
            ns.Show();
            this.Hide();
        }
    }
}
