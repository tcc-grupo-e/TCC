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
    public partial class Pedidos : Form
    {
        public Pedidos()
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
            Pedidos pe = new Pedidos();
            pe.Show();
            this.Hide();
        }

        private void bbtnLogoff_Click(object sender, EventArgs e)
        {
            Login lo = new Login();
            lo.Show();
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

        private void bbtnLogoff_Click_1(object sender, EventArgs e)
        {
            Login lo = new Login();
            lo.Show();
            this.Hide();
        }

        private void bbtnFechar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void bbtnMinimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Pedidos_Load(object sender, EventArgs e)
        {
            LoginBLL lo = new LoginBLL();

            lblUsu.Text = lo.getNome();

            if (lo.getNivelAcesso() == 1)
            {
                bbtnServiço.Visible = false;
                bbtnFuncionario.Visible = false;
            }

            PedidosBLL peBLL = new PedidosBLL();
            try
            {
                GridCliente.DataSource = peBLL.pesquisar_Todos_Clientes().DefaultView;
            }
            catch { }
        }

        private void bbtnClienteJu_Click(object sender, EventArgs e)
        {
            ClienteJu clij = new ClienteJu();
            clij.Show();
            this.Hide();
        }

        private void bbtnCancelar_Click(object sender, EventArgs e)
        {
            bbtnHome_Click(sender, e);
        }

        private void bbtnCadastroCliF_Click(object sender, EventArgs e)
        {
            PedidosBLL peBLL = new PedidosBLL();
            peBLL.setNovoCadastro("S");
            bbtnCliente_Click(sender, e);
        }

        private void bbtnCadastroCliJ_Click(object sender, EventArgs e)
        {
            PedidosBLL peBLL = new PedidosBLL();
            peBLL.setNovoCadastro("S");
            bbtnClienteJu_Click(sender, e);
        }

        private void bbtnContinuar_Click(object sender, EventArgs e)
        {
            PedidosBLL peBLL = new PedidosBLL();
            if (peBLL.getIdCliente() == 0)
            {
                Mensagem ms = new Mensagem();
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Selecione um Cliente");
                msBLL.setTitulo("Aviso");
                ms.ShowDialog();
            }
            else
            {
                Pedidos2 pe2 = new Pedidos2();
                pe2.Show();
                this.Hide();
            }
        }

        private void bbtnServiço_Click(object sender, EventArgs e)
        {
            Adicionais ad = new Adicionais();
            ad.Show();
            this.Hide();
        }

        private void btxtConsultar_OnTextChange(object sender, EventArgs e)
        {
            PedidosBLL peBLL = new PedidosBLL();
            if (!btxtConsultar.text.Equals("Nome Cliente"))
            {
                try
                {
                    GridCliente.DataSource = peBLL.pesquisar_Clientes_Nome(btxtConsultar.text);
                }
                catch { }
            }
            if (btxtConsultar.text.Equals(""))
            {
                try
                {
                    GridCliente.DataSource = peBLL.getTodosClientes();
                }
                catch { }
            }
        }

        private void btxtConsultar_Leave(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals(""))
                btxtConsultar.text = "Nome Cliente";
        }

        private void btxtConsultar_Enter(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals("Nome Cliente"))
                btxtConsultar.text = "";
        }

        private void GridCliente_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            int Linha = Convert.ToInt32(GridCliente.CurrentCell.RowIndex);
            String Nome = GridCliente.Rows[Linha].Cells["Nome"].Value.ToString();
            String CPF = GridCliente.Rows[Linha].Cells["CPF"].Value.ToString();
            Mensagem ms = new Mensagem();
            MensagemBLL msBLL = new MensagemBLL();
            msBLL.setMensagem("Cliente: \n" + Nome);
            msBLL.setTitulo("Aviso");
            ms.ShowDialog();
            PedidosBLL peBLL = new PedidosBLL();

            if (CPF.Equals("-"))
                peBLL.setClienteFJ("J");
            else
                peBLL.setClienteFJ("F");

            peBLL.setIdCliente(peBLL.pesquisar_Id_Clientes_Nome(Nome));
        }
    }
}
