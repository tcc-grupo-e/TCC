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
    public partial class Pedidos3 : Form
    {
        public Pedidos3()
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
            if (peBLL.getIdCaminhao() == 0)
            {
                Mensagem ms = new Mensagem();
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Selecione um Caminhão");
                msBLL.setTitulo("Aviso");
                ms.ShowDialog();
            }
            else
            {
                Pedidos4 pe4 = new Pedidos4();
                pe4.Show();
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
            if (!btxtConsultar.text.Equals("") && !btxtConsultar.text.Equals("Placa Caminhão"))
            {
                try
                {
                    GridCaminhao.DataSource = peBLL.pesquisar_Motoristas_Nome(btxtConsultar.Text);
                }
                catch { }
            }
        }

        private void btxtConsultar_Enter(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals("Placa Caminhão"))
                btxtConsultar.text = "";
        }

        private void btxtConsultar_Leave(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals(""))
                btxtConsultar.text = "Placa Caminhão";
        }

        private void GridMotorista_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            int Linha = Convert.ToInt32(GridCaminhao.CurrentCell.RowIndex);
            String Placa = GridCaminhao.Rows[Linha].Cells["Placa"].Value.ToString();
            Mensagem ms = new Mensagem();
            MensagemBLL msBLL = new MensagemBLL();
            msBLL.setMensagem("Caminhão: \n" + Placa);
            msBLL.setTitulo("Aviso");
            ms.ShowDialog();
            PedidosBLL peBLL = new PedidosBLL();
            int ID = peBLL.pesquisar_Id_Caminhoes_Placa(Placa);
            peBLL.setIdMotorista(ID);
        }

        private void Pedidos3_Load(object sender, EventArgs e)
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
                GridCaminhao.DataSource = peBLL.pesquisar_Todos_Caminhoes();
            }
            catch { }
        }
    }
}
