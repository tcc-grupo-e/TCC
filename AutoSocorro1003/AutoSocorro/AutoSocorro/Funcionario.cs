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
    public partial class Funcionario : Form
    {
        public Funcionario()
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

        private void bbtnMotorista_Click(object sender, EventArgs e)
        {
            Motorista mot = new Motorista();
            mot.Show();
            this.Hide();
        }

        private void bbtnFuncionario_Click(object sender, EventArgs e)
        {
            Funcionario fun = new Funcionario();
            fun.Show();
            this.Hide();
        }

        private void bbtnServiço_Click(object sender, EventArgs e)
        {
            Serviços ser = new Serviços();
            ser.Show();
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
        String[] txt = { "Enviar", "Nome", "Email", "RG", "Endereço", "Cidade", "CEP", "Estado Civil", "CNH", "Estado", "Data de Nascimento", "Telefone", "Nome do conjuge", "Telefone do conjuge" };
        private void PlaceHolder_Enter(object sender, EventArgs e)
        {
            Bunifu.Framework.UI.BunifuMetroTextbox btxt = (Bunifu.Framework.UI.BunifuMetroTextbox)sender;
            if (btxt.Text.Equals(txt[btxt.TabIndex - 1]))
            {
                btxt.Text = "";
                btxt.ForeColor = Color.FromArgb(64,64,64);
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
        //
        //Validação
        //
        private int validar()
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
            //Nome Conjuge
            if (cv.ValidaNome(btxtConjuge.Text))
            {
                i++;
                btxtConjuge.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtConjuge.BorderColorIdle = Color.Red;
            //Data Nascimento
            if (cv.ValidaData(btxtDataNasc.Text))
            {
                i++;
                btxtDataNasc.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtDataNasc.BorderColorIdle = Color.Red;
            //Telefone Conjuge
            if (cv.ValidaTelefone(btxtTelconjuge.Text))
            {
                i++;
                btxtTelconjuge.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtTelconjuge.BorderColorIdle = Color.Red;
            //Telefone
            if (cv.ValidaTelefone(btxtTel.Text))
            {
                i++;
                btxtTel.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtTel.BorderColorIdle = Color.Red;
            //Endereço
            if (cv.ValidaEnd(btxtEnd.Text))
            {
                i++;
                btxtEnd.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtEnd.BorderColorIdle = Color.Red;
            //RG
            if (cv.ValidaRG(btxtRG.Text))
            {
                i++;
                btxtRG.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtRG.BorderColorIdle = Color.Red;
            //Cidade
            if (cv.ValidaBairro(btxtCidade.Text))
            {
                i++;
                btxtCidade.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtCidade.BorderColorIdle = Color.Red;
            //Estado Civil
            if (cv.ValidaEstadoCivil(btxtEstadoCivil.Text))
            {
                i++;
                btxtEstadoCivil.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtEstadoCivil.BorderColorIdle = Color.Red;
            //CEP
            if (cv.ValidaCEP(btxtCEP.Text))
            {
                i++;
                btxtCEP.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtCEP.BorderColorIdle = Color.Red;
            //Email
            if (cv.ValidaEmail(btxtEmail.Text))
            {
                i++;
                btxtEmail.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtEmail.BorderColorIdle = Color.Red;
            //Salário
            if (cv.ValidaSalário(btxtSalario.Text))
            {
                i++;
                btxtSalario.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtSalario.BorderColorIdle = Color.Red;
            //Cargo
            if (cv.ValidaCargo(btxtCargo.Text))
            {
                i++;
                btxtCargo.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtCargo.BorderColorIdle = Color.Red;
            i++;
            //CNH
            if (btxtCNH.Visible)
            {
                if (cv.ValidaCNH(btxtCNH.Text))
                {
                    i++;
                    btxtCNH.BorderColorIdle = Color.FromArgb(64, 64, 64);
                }
                else
                    btxtCNH.BorderColorIdle = Color.Red;
            }
            //Celular
            if (btxtCelular.Visible)
            {
                if (cv.ValidaCelular(btxtCelular.Text))
                {
                    i++;
                    btxtCelular.BorderColorIdle = Color.FromArgb(64, 64, 64);
                }
                else
                    btxtCelular.BorderColorIdle = Color.Red;
            }
            btxtSalario.Text = btxtSalario.Text.Replace(",", ".");
            return i;
        }
        //
        //Botões de opções
        //
        private void bbtnLimpar_Click(object sender, EventArgs e)
        {
            foreach (Control c in this.Controls)
            {
                if (c.TabIndex >= 2 && c.TabIndex <= 14)
                {
                    c.Text = txt[c.TabIndex - 1];
                    c.ForeColor = Color.DarkGray;
                }
            }
        }

        private void bbtnEnviar_Click(object sender, EventArgs e)
        {
            if (validar() == 17)
            {

            }
        }

        private void bbtnAlterar_Click(object sender, EventArgs e)
        {

        }

        private void bbtnDeletar_Click(object sender, EventArgs e)
        {

        }
    }
}
