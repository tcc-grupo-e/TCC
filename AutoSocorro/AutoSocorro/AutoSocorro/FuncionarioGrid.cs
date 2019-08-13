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
    public partial class FuncionarioGrid : Form
    {
        DataSet ds = new DataSet();
        
        public FuncionarioGrid()
        {
            InitializeComponent();
        }

        //
        //Botões Menu
        //
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
        //Load
        //
        private void FuncionarioGrid_Load(object sender, EventArgs e)
        {
            LoginBLL lo = new LoginBLL();

            lblUsu.Text = lo.getNome();

            if (lo.getNivelAcesso() == 1)
            {
                bbtnServiço.Visible = false;
                bbtnFuncionario.Visible = false;
            }

            FuncionarioBLL funcBLL = new FuncionarioBLL();
            GridFunc.DataSource = funcBLL.pesquisarFunc("*");
        }
        //
        //TextChange Pesquisar
        //
        private void btxtConsultar_OnTextChange(object sender, EventArgs e)
        {
            if (!btxtConsultar.text.Equals("") && !btxtConsultar.text.Equals("Nome do Funcionário"))
            {
                FuncionarioBLL funcBLL = new FuncionarioBLL();
                GridFunc.DataSource = funcBLL.pesquisarFunc(btxtConsultar.text);
            }
        }

        private void btxtConsultar_Enter(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals("Nome do Funcionário"))
                btxtConsultar.text = "";
        }

        private void btxtConsultar_Leave(object sender, EventArgs e)
        {
            if (btxtConsultar.text.Equals(""))
                btxtConsultar.text = "Nome do Funcionário";
        }

        private void GridFunc_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            int Linha = Convert.ToInt32(GridFunc.CurrentCell.RowIndex);
            String cod = GridFunc.Rows[Linha].Cells[3].Value.ToString();

            FuncionarioBLL funcBLL = new FuncionarioBLL();
            funcBLL.setCod(cod);
            funcBLL.setLinhaCod(Linha + "");
            Funcionario func = new Funcionario();
            this.Hide();
            func.Show();
        }

        private void bbtnClienteJuridico_Click(object sender, EventArgs e)
        {
            ClienteJu clij = new ClienteJu();
            clij.Show();
            this.Hide();
        }

        private void bbtnServiço_Click(object sender, EventArgs e)
        {
            Adicionais add = new Adicionais();
            add.Show();
            this.Hide();
        }

        private void lblUsu_Click(object sender, EventArgs e)
        {
            NovoLogin nl = new NovoLogin();
            nl.Show();
            this.Hide();
        }
    }
}
