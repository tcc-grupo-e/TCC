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
    public partial class PedidosGrid : Form
    {
        public PedidosGrid()
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

        private void PedidosGrid_Load(object sender, EventArgs e)
        {
            LoginBLL lo = new LoginBLL();

            lblUsu.Text = lo.getNome();

            if (lo.getNivelAcesso() == 1)
            {
                bbtnServiço.Visible = false;
                bbtnFuncionario.Visible = false;
            }

            try
            {
                PedidosBLL peBLL = new PedidosBLL();
                GridChamadas.DataSource = peBLL.pesquisar_TodasChamadas();
            }
            catch { }
        }

        private void bbtnClienteJuridico_Click(object sender, EventArgs e)
        {
            ClienteJu cliJ = new ClienteJu();
            cliJ.Show();
            this.Hide();
        }

        private void bbtnServiço_Click(object sender, EventArgs e)
        {
            Adicionais add = new Adicionais();
            add.Show();
            this.Hide();
        }

        private void btxtConsultar_Enter(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals("Consultar"))
                btxtConsultar.text = "";
        }

        private void btxtConsultar_Leave(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals(""))
                btxtConsultar.text = "Consultar";
        }

        private void btxtConsultar_OnTextChange(object sender, EventArgs e)
        {
            PedidosBLL pe = new PedidosBLL();
            if (!btxtConsultar.text.Equals("") && !btxtConsultar.text.Equals("Consultar"))
            {
                try
                {
                    if (bdropAtrib.selectedIndex == 0)
                        GridChamadas.DataSource = pe.pesquisar_TodasChamadas();
                    else if (bdropAtrib.selectedIndex == 1)
                        GridChamadas.DataSource = pe.pesquisar_TodasChamadasData(btxtConsultar.text);
                    else if (bdropAtrib.selectedIndex == 2)
                        GridChamadas.DataSource = pe.pesquisar_TodasChamadasPlacaCarro(btxtConsultar.text);
                    else if (bdropAtrib.selectedIndex == 3)
                        GridChamadas.DataSource = pe.pesquisarModeloCarro(btxtConsultar.text);
                    else if (bdropAtrib.selectedIndex == 4)
                        GridChamadas.DataSource = pe.pesquisarMotorista(btxtConsultar.text);
                    else
                        GridChamadas.DataSource = pe.pesquisarDestino(btxtConsultar.text);
                }
                catch { }
            }
        }

        private void bunifuSeparator1_Load(object sender, EventArgs e)
        {

        }
    }
}
