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
    public partial class Pedidos2 : Form
    {
        public Pedidos2()
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

        private void bbtnContinuar_Click(object sender, EventArgs e)
        {
            PedidosBLL peBLL = new PedidosBLL();
            if (peBLL.getIdMotorista() == 0)
            {
                Mensagem ms = new Mensagem();
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Selecione um Motorista");
                msBLL.setTitulo("Aviso");
                ms.ShowDialog();
            }
            else
            {
                Pedidos3 pe3 = new Pedidos3();
                pe3.Show();
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
            if (!btxtConsultar.text.Equals("") && !btxtConsultar.text.Equals("Nome Motorista"))
            {
                try
                {
                    GridMotorista.DataSource = peBLL.pesquisar_Motoristas_Nome(btxtConsultar.Text);
                }
                catch { }
            }
        }

        private void btxtConsultar_Enter(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals("Nome Motorista"))
                btxtConsultar.text = "";
        }

        private void btxtConsultar_Leave(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals(""))
                btxtConsultar.text = "Nome Motorista";
        }

        private void GridMotorista_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            int Linha = Convert.ToInt32(GridMotorista.CurrentCell.RowIndex);
            String Nome = GridMotorista.Rows[Linha].Cells["Nome"].Value.ToString();
            Mensagem ms = new Mensagem();
            MensagemBLL msBLL = new MensagemBLL();
            msBLL.setMensagem("Motorista: \n" + Nome);
            msBLL.setTitulo("Aviso");
            ms.ShowDialog();
            PedidosBLL peBLL = new PedidosBLL();
            int ID = peBLL.pesquisar_Id_Motoristas_Nome(Nome);
            peBLL.setIdMotorista(ID);
        }

        private void Pedidos2_Load(object sender, EventArgs e)
        {
            PedidosBLL peBLL = new PedidosBLL();
            try
            {
                GridMotorista.DataSource = peBLL.pesquisar_Todos_Motoristas();
            }
            catch { }
        }
    }
}
