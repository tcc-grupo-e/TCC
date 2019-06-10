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
    public partial class ClienteJu : Form
    {
        public ClienteJu()
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
        String[] txt = { "Enviar", "Nome", "Email", "Telefone", "CNPJ", "Inscrição Estadual"};
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
            EmpresaBLL cliBLL = new EmpresaBLL();
            try
            {
                GridCliente.DataSource = cliBLL.pesquisarTodasEmpresas();
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
            if (!btxtConsultar.text.Equals("") && !btxtConsultar.text.Equals("Consultar"))
            {
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

        private void bbtnAutoCadastro_Click(object sender, EventArgs e)
        {
            btxtNome.Text = "Acroni";
            btxtEmail.Text = "contato@Acroni.com";
            btxtTelefone.Text = "(11)97502-7389";
            btxtCNPJ.Text = "65.567.325/0001-04";
            btxtIE.Text = "396.638.830.393";
            btxtNome.ForeColor = btxtEmail.ForeColor = btxtCNPJ.ForeColor = btxtTelefone.ForeColor = btxtIE.ForeColor = Color.FromArgb(64, 64, 64);
        }

        //
        //Validação
        //
        public int validar()
        {
            ClasseValida cv = new ClasseValida();
            int i = 0;
            //Nome
            if (cv.ValidaNome(btxtNome.Text))
            {
                i++;
                btxtNome.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtNome.BorderColorIdle = Color.Red;
            //Email
            if (cv.ValidaEmail(btxtEmail.Text))
            {
                i++;
                btxtEmail.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtEmail.BorderColorIdle = Color.Red;
            //Telefone
            if (cv.ValidaTelefone(btxtTelefone.Text))
            {
                i++;
                btxtTelefone.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtTelefone.BorderColorIdle = Color.Red;
            //CNPJ
            if (cv.ValidaCNPJ(btxtCNPJ.Text))
            {
                i++;
                btxtCNPJ.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtCNPJ.BorderColorIdle = Color.Red;
            //IE
            i++;
            return i;
        }

        private void bbtnEnviar_Click(object sender, EventArgs e)
        {
            if (validar() == 5)
            {
                EmpresaBLL cliBLL = new EmpresaBLL();
                if (cliBLL.inserirEmpresa(btxtNome.Text, btxtEmail.Text, btxtTelefone.Text, btxtCNPJ.Text, btxtIE.Text))
                {
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Cliente Cadastrado com sucesso!");
                    mBLL.setTitulo("Mensagem");
                    Mensagem ms = new Mensagem();
                    ms.ShowDialog();
                    bbtnLimpar_Click(sender, e);
                }
                else
                {
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Cliente Não Cadastrado!");
                    mBLL.setTitulo("Alerta");
                    Mensagem ms = new Mensagem();
                    ms.ShowDialog();
                }
            }
            else
            {
                MensagemBLL mBLL = new MensagemBLL();
                mBLL.setMensagem("Preencha Todos Os Campos Corretamente!");
                mBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                ms.ShowDialog();
            }
        }
        bool alterar = false;
        String codCnpj = "";
        private void GridCliente_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            btxtNome.ForeColor = btxtEmail.ForeColor = btxtCNPJ.ForeColor = btxtTelefone.ForeColor = Color.FromArgb(64, 64, 64);
            int Linha = Convert.ToInt32(GridCliente.CurrentCell.RowIndex);
            btxtNome.Text = GridCliente.Rows[Linha].Cells["Nome"].Value.ToString();
            btxtEmail.Text = GridCliente.Rows[Linha].Cells["E-Mail"].Value.ToString();
            btxtTelefone.Text = GridCliente.Rows[Linha].Cells["Telefone"].Value.ToString();
            btxtCNPJ.Text = GridCliente.Rows[Linha].Cells["CNPJ"].Value.ToString();
            btxtIE.Text = GridCliente.Rows[Linha].Cells["IE"].Value.ToString();
            codCnpj = btxtCNPJ.Text;
            alterar = true;
        }

        private void bbtnAlterar_Click(object sender, EventArgs e)
        {
            if (alterar)
            {
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Deseja Realmente Alterar Esse Cliente");
                msBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                MensagemS_N msn = new MensagemS_N();
                msn.ShowDialog();

                if (msBLL.getSN().Equals("S"))
                {
                    if (validar() == 5)
                    {
                       EmpresaBLL cliBLL = new EmpresaBLL();
                        if (cliBLL.alterarEmpresa(btxtNome.Text, btxtEmail.Text, btxtTelefone.Text, btxtCNPJ.Text, btxtIE.Text, codCnpj))
                        {
                            alterar = false;
                            MensagemBLL mBLL = new MensagemBLL();
                            mBLL.setMensagem("Cliente Alterado Com Sucesso!");
                            mBLL.setTitulo("Mensagem");
                            ms.ShowDialog();
                            bbtnLimpar_Click(sender, e);
                        }
                        else
                        {
                            MensagemBLL mBLL = new MensagemBLL();
                            mBLL.setMensagem("Cliente Não Alterado!");
                            mBLL.setTitulo("Alerta");
                            ms.ShowDialog();
                        }
                    }
                    else
                    {
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Preencha Todos Os Campos Corretamente!");
                        mBLL.setTitulo("Alerta");
                        ms.ShowDialog();
                    }
                }
                else
                {
                    alterar = false;
                }
            }
            else
            {
                MensagemBLL mBLL = new MensagemBLL();
                mBLL.setMensagem("Selecione Um Cliente");
                mBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                ms.ShowDialog();
            }
        }

        private void bbtnDeletar_Click(object sender, EventArgs e)
        {
            if (alterar)
            {
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Deseja Realmente Deletar Esse Cliente");
                msBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                MensagemS_N msn = new MensagemS_N();
                msn.ShowDialog();

                if (msBLL.getSN().Equals("S"))
                {
                    ClienteBLL cliBLL = new ClienteBLL();
                    if (cliBLL.deletarCli(codCnpj))
                    {
                        alterar = false;
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Cliente Deletado Com Sucesso!");
                        mBLL.setTitulo("Mensagem");
                        ms.ShowDialog();
                        bbtnLimpar_Click(sender, e);
                    }
                    else
                    {
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Cliente Não Deletado!");
                        mBLL.setTitulo("Alerta");
                        ms.ShowDialog();
                    }
                }
                else
                {
                    alterar = false;
                }
            }
            else
            {
                MensagemBLL mBLL = new MensagemBLL();
                mBLL.setMensagem("Selecione Um Cliente");
                mBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                ms.ShowDialog();
            }
        }

        private void bbtnServiço_Click(object sender, EventArgs e)
        {

        }

        private void btxtNome_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsNumber(e.KeyChar) == true)
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar) == true)
            {
                if (e.KeyChar == '-')
                    e.Handled = false;
                else
                    e.Handled = true;
            }
        }

        private void btxtTelefone_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
                e.Handled = true;
        }

        private void btxtCPF_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
                e.Handled = true;
        }

        private void btxtTelefone_Leave(object sender, EventArgs e)
        {
            if (btxtTelefone.Text.Equals(""))
            {
                btxtTelefone.Text = "Telefone";
                btxtTelefone.ForeColor = Color.DarkGray;
                btxtTelefone.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
            {
                if (btxtTelefone.Text.Length == 11)
                {
                    String tel = btxtTelefone.Text;
                    btxtTelefone.Text = "(" + tel[0] + "" + tel[1] + ")" + tel[2] + "" + tel[3] + "" + tel[4] + "" + tel[5] + "" + tel[6] + "-" + tel[7] + "" + tel[8] + "" + tel[9] + "" + tel[10];
                }
            }
        }

        private void bbtnClienteJu_Click(object sender, EventArgs e)
        {
            ClienteJu clij = new ClienteJu();
            clij.Show();
            this.Hide();
        }
    }
}
