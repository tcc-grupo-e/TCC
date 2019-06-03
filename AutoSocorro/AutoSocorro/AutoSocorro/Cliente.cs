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
    public partial class Cliente : Form
    {
        public Cliente()
        {
            InitializeComponent();
        }

        private void bbtnHome_Click(object sender, EventArgs e)
        {
            Home ho = new Home();
            ho.Show();
            this.Hide();
        }

        private void bbtnPedido_Click(object sender, EventArgs e)
        {
            Pedidos ped = new Pedidos();
            ped.Show();
            this.Hide();
        }

        private void bbtnCliente_Click(object sender, EventArgs e)
        {
            Cliente cli = new Cliente();
            cli.Show();
            this.Hide();
        }

        private void bbtnFuncionario_Click(object sender, EventArgs e)
        {
            Funcionario fun = new Funcionario();
            fun.Show();
            this.Hide();
        }

       
        private void bbtnLogoff_Click(object sender, EventArgs e)
        {
            Login lo = new Login();
            lo.Show();
            this.Hide();
        }

        private void bbtnMinimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void bbtnFechar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        //
        //PlaceHolder
        //
        String[] txt = { "Enviar", "Nome", "Email", "Telefone", "CPF"};
        private void PlaceHolder_Enter(object sender, EventArgs e)
        {
            Bunifu.Framework.UI.BunifuMetroTextbox btxt = (Bunifu.Framework.UI.BunifuMetroTextbox)sender;
            if (btxt.Text.Equals(txt[btxt.TabIndex - 1]))
            {
                btxt.Text = "";
                btxt.ForeColor = Color.FromArgb(64, 64, 64);
            }
        }
        private void PlaceHolder_Leave(object sender, EventArgs e)
        {
            Bunifu.Framework.UI.BunifuMetroTextbox btxt = (Bunifu.Framework.UI.BunifuMetroTextbox)sender;
            if (btxt.Text.Equals(""))
            {
                btxt.Text = txt[btxt.TabIndex - 1];
                btxt.ForeColor = Color.DarkGray;
            }
        }

        private void Cliente_Load(object sender, EventArgs e)
        {
            bdropAtrib.selectedIndex = 0;
            ClienteBLL cliBLL = new ClienteBLL();
            try
            {
                GridCliente.DataSource = cliBLL.pesquisarCli();
            }
            catch { }
        }

        private void btxtConsultar_Leave(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals(""))
            {
                btxtConsultar.text = "Consultar";
            }
        }

        private void btxtConsultar_Enter(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals("Consultar"))
            {
                btxtConsultar.text = "";
            }
        }

        private void btxtConsultar_OnTextChange(object sender, EventArgs e)
        {
            ClienteBLL cliBLL = new ClienteBLL();
            if (!btxtConsultar.text.Equals("") && !btxtConsultar.text.Equals("Consultar")) {
                try
                {
                    if (bdropAtrib.selectedIndex == 0)
                        GridCliente.DataSource = cliBLL.pesquisarCli();
                    else if (bdropAtrib.selectedIndex == 1)
                        GridCliente.DataSource = cliBLL.pesquisarCliNome(btxtConsultar.Text);
                    else if (bdropAtrib.selectedIndex == 2)
                        GridCliente.DataSource = cliBLL.pesquisarCliEmail(btxtConsultar.Text);
                    else if (bdropAtrib.selectedIndex == 3)
                        GridCliente.DataSource = cliBLL.pesquisarCliTelefone(btxtConsultar.Text);
                    else
                        GridCliente.DataSource = cliBLL.pesquisarCliCPF(btxtConsultar.Text);
                }
                catch { }
            }
        }

        private void bbtnLimpar_Click(object sender, EventArgs e)
        {
            bbtnCliente_Click(sender, e);
        }

        private void bdropAtrib_onItemSelected(object sender, EventArgs e)
        {
            if (bdropAtrib.selectedIndex == 0)
            {
                ClienteBLL cliBLL = new ClienteBLL();
                GridCliente.DataSource = cliBLL.getTodClientes();
            }
        }
    }
}
