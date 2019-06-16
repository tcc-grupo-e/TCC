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
    public partial class Adicionais : Form
    {
        public Adicionais()
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

        private void bbtnServiço_Click(object sender, EventArgs e)
        {
            Adicionais ad = new Adicionais();
            ad.Show();
            this.Hide();
        }

        //
        //PlaceHolder
        //
        String[] txt = { "Enviar", "Nome", "Preço" };
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

        private void bbtnLimpar_Click(object sender, EventArgs e)
        {
            bbtnServiço_Click(sender, e);
        }

        private void bbtnAutoCadastro_Click(object sender, EventArgs e)
        {
            btxtNome.Text = "Saída";
            btxtPreco.Text = "R$200.00";
            btxtNome.ForeColor = btxtPreco.ForeColor = Color.FromArgb(64, 64, 64);
        }

        private void btxtNome_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsNumber(e.KeyChar) == true)
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar) == true)
                e.Handled = true;
        }

        public int validar()
        {
            int i = 0;
            ClasseValida cv = new ClasseValida();

            //Nome
            if (cv.ValidaNome(btxtNome.Text))
            {
                i++;
                btxtNome.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtNome.BorderColorIdle = Color.Red;
            //Preço
            if (cv.ValidaPreco(btxtPreco.Text))
            {
                i++;
                btxtPreco.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtPreco.BorderColorIdle = Color.Red;
            return i;
        }

        private void bbtnEnviar_Click(object sender, EventArgs e)
        {
            if (validar() == 2)
            {
                btxtPreco.Text = btxtPreco.Text.Replace(",", ".");

                if (!btxtPreco.Text.Contains("R$"))
                    btxtPreco.Text = "R$" + btxtPreco.Text;
                if (!btxtPreco.Text.Contains("."))
                    btxtPreco.Text = btxtPreco.Text + ".00";

                AdicionaisBLL adBLL = new AdicionaisBLL();
                if (adBLL.inserirAdicional(btxtNome.Text, btxtPreco.Text))
                {
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Adicional Cadastrado Com Sucesso!");
                    mBLL.setTitulo("Mensagem");
                    Mensagem ms = new Mensagem();
                    ms.ShowDialog();
                    bbtnLimpar_Click(sender, e);
                }
                else
                {
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Adicional Não Cadastrado!");
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
        private void bbtnAlterar_Click(object sender, EventArgs e)
        {
            if (alterar)
            {
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Deseja Realmente Alterar Esse Adicional");
                msBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                MensagemS_N msn = new MensagemS_N();
                msn.ShowDialog();

                if (msBLL.getSN().Equals("S"))
                {
                    if (validar() == 2)
                    {
                        AdicionaisBLL adBLL = new AdicionaisBLL();
                        if (adBLL.alterarAdicional(btxtNome.Text, btxtPreco.Text, nome, preco))
                        {
                            alterar = false;
                            MensagemBLL mBLL = new MensagemBLL();
                            mBLL.setMensagem("Adicional Alterardo Com Sucesso!");
                            mBLL.setTitulo("Mensagem");
                            ms.ShowDialog();
                            bbtnLimpar_Click(sender, e);
                        }
                        else
                        {
                            MensagemBLL mBLL = new MensagemBLL();
                            mBLL.setMensagem("Adicional Não Alterado!");
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
            }
            else
            {
                MensagemBLL mBLL = new MensagemBLL();
                mBLL.setMensagem("Selecione um Adicional");
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
                msBLL.setMensagem("Deseja Realmente Deletar Esse Adicional");
                msBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                MensagemS_N msn = new MensagemS_N();
                msn.ShowDialog();

                if (msBLL.getSN().Equals("S"))
                {
                    AdicionaisBLL adBLL = new AdicionaisBLL();
                    if (adBLL.deletarAdicional(btxtNome.Text, btxtPreco.Text))
                    {
                        alterar = false;
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Adicional Deletado Com Sucesso!");
                        mBLL.setTitulo("Mensagem");
                        ms.ShowDialog();
                        bbtnLimpar_Click(sender, e);
                    }
                    else
                    {
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Adicional Não Deletado!");
                        mBLL.setTitulo("Alerta");
                        ms.ShowDialog();
                    }
                }
            }
            else
            {
                MensagemBLL mBLL = new MensagemBLL();
                mBLL.setMensagem("Selecione um Adicional");
                mBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                ms.ShowDialog();
            }
        }

        private void Adicionais_Load(object sender, EventArgs e)
        {
            LoginBLL lo = new LoginBLL();

            lblUsu.Text = lo.getNome();

            if (lo.getNivelAcesso() == 1)
            {
                bbtnServiço.Visible = false;
                bbtnFuncionario.Visible = false;
            }

            bdropAtrib.selectedIndex = 0;
            AdicionaisBLL adBLL = new AdicionaisBLL();
            try
            {
                GridAdicionais.DataSource = adBLL.pesquisarAdicionais();
            }
            catch { }
        }

        private void bdropAtrib_onItemSelected(object sender, EventArgs e)
        {
            if(bdropAtrib.selectedIndex == 0)
            {
                AdicionaisBLL adBLL = new AdicionaisBLL();
                try
                {
                    GridAdicionais.DataSource = adBLL.pesquisarAdicionais();
                }
                catch { }
            }
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
            AdicionaisBLL adBLL = new AdicionaisBLL();
            if (!btxtConsultar.text.Equals("") && !btxtConsultar.text.Equals("Consultar"))
            {
                try
                {
                    if (bdropAtrib.selectedIndex == 0)
                        GridAdicionais.DataSource = adBLL.pesquisarAdicionais();
                    else if (bdropAtrib.selectedIndex == 1)
                        GridAdicionais.DataSource = adBLL.pesquisarAdicionaisNome(btxtConsultar.text);
                    else
                        GridAdicionais.DataSource = adBLL.pesquisarAdicionaisPreco(btxtConsultar.text);
                }
                catch { }
            }
        }
        String nome = "";
        String preco = "";
        private void GridAdicionais_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            btxtNome.ForeColor = btxtPreco.ForeColor = Color.FromArgb(64, 64, 64);
            int Linha = Convert.ToInt32(GridAdicionais.CurrentCell.RowIndex);
            nome = btxtNome.Text = GridAdicionais.Rows[Linha].Cells[0].Value.ToString();
            preco = btxtPreco.Text = GridAdicionais.Rows[Linha].Cells[1].Value.ToString();
            alterar = true;
        }
    }
}
