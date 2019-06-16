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
    public partial class Fechamento : Form
    {
        public Fechamento()
        {
            InitializeComponent();
        }

        private void btnN_CheckedChanged(object sender, EventArgs e)
        {
            if (btnN.Checked)
                btnS.Checked = false;
        }

        private void btnS_CheckedChanged(object sender, EventArgs e)
        {
            if (btnS.Checked)
                btnN.Checked = false;
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

        private void bbtnServiço_Click(object sender, EventArgs e)
        {
            Adicionais add = new Adicionais();
            add.Show();
            this.Hide();
        }

        private void bbtnFechar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void bbtnClinteJu_Click(object sender, EventArgs e)
        {
            ClienteJu clij = new ClienteJu();
            clij.Show();
            this.Hide();
        }
        //
        //PlaceHolder
        //
        String[] txt = { "Enviar", "Km Chegada", "Hora Chegada", "Hora Parada", "Hora Trabalhada", "Contato", "Estado do Veículo" };
        private void PlaceHolder_Enter(object sender, EventArgs e)
        {
            Bunifu.Framework.UI.BunifuMetroTextbox btxt = (Bunifu.Framework.UI.BunifuMetroTextbox)sender;
            if (btxt.Text.Equals(txt[btxt.TabIndex - 1]))
            {
                btxt.Text = "";
                btxt.ForeColor = Color.DarkGray;
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

        private void Fechamento_Load(object sender, EventArgs e)
        {
            LoginBLL lo = new LoginBLL();

            lblUsu.Text = lo.getNome();

            if (lo.getNivelAcesso() == 1)
            {
                bbtnServiço.Visible = false;
                bbtnFuncionario.Visible = false;
            }

            DataTable dt = new DataTable();
            PedidosBLL pe = new PedidosBLL();
            Pedidos4BLL pe4 = new Pedidos4BLL();
            dt = pe.pesquisar_TodasChamadas();

            int l = Convert.ToInt16(pe4.getCodAb());

            l--;

            lblCliente.Text = dt.Rows[l]["Cliente"] + "";
            lblDestino.Text = dt.Rows[l]["Destino Final"] + "";
            lblModelo.Text = dt.Rows[l]["Modelo"] + "";
            lblMotorista.Text = dt.Rows[l]["Motorista"] + "";
            lblPlacaCarro.Text = dt.Rows[l]["Placa"] + "";
        }

        private void bbtnLimpar_Click(object sender, EventArgs e)
        {
            Fechamento fe = new Fechamento();
            fe.Show();
            this.Hide();
        }
        public int validar()
        {
            ClasseValida cv = new ClasseValida();
            int i = 0;
            //Km Chegada
            if (cv.ValidaKm(btxtKmChegada.Text))
            {
                i++;
                btxtKmChegada.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtKmChegada.BorderColorIdle = Color.Red;
            //Hora Chegada
            if (cv.ValidaHora(btxtHrChegada.Text))
            {
                i++;
                btxtHrChegada.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtHrChegada.BorderColorIdle = Color.Red;
            //Hora Parada
            if (!btxtHrParada.Text.Equals("") && !btxtHrParada.Text.Equals("Hora Trabalhada"))
            {
                i++;
                btxtHrParada.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtHrParada.BorderColorIdle = Color.Red;
            //Hora Trabalhada
            if (!btxtHrTrab.Text.Equals("") && !btxtHrTrab.Text.Equals("Hora Trabalhada"))
            {
                i++;
                btxtHrTrab.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtHrTrab.BorderColorIdle = Color.Red;
            //Contato
            if (cv.ValidaNome(btxtContato.Text))
            {
                i++;
                btxtContato.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtContato.BorderColorIdle = Color.Red;
            //Estado do veículo
            i++;
            return i;
        }


        private void bbtnEnviar_Click(object sender, EventArgs e)
        {
            if (validar() == 6)
            {
                String Acom = "Não";
                if (btnS.Checked)
                    Acom = "Sim";
                if (btnN.Checked)
                    Acom = "Não";
                Pedidos4BLL pe4 = new Pedidos4BLL();
                int l = Convert.ToInt16(pe4.getCodAb());
                Pedidos4BLL pe4BLL = new Pedidos4BLL();
                if (pe4BLL.inserirFechamento(btxtKmChegada.Text, btxtHrChegada.Text, btxtHrParada.Text, btxtHrTrab.Text, btxtContato.Text, btxtEstado.Text, Acom, l))
                {
                    
                    pe4BLL.inserirFuncAber();

                    PedidosBLL peBLL = new PedidosBLL();

                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Chamada Encerrada Com Sucesso!");
                    mBLL.setTitulo("Mensagem");
                    Mensagem ms = new Mensagem();
                    ms.ShowDialog();
                    Home pe = new Home();
                    pe.Show();
                    this.Hide();
                }
                else
                {
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Chamada Não Encerrada!");
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
    }
}











