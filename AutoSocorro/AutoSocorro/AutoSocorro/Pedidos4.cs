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
    public partial class Pedidos4 : Form
    {
        public Pedidos4()
        {
            InitializeComponent();
        }
        DataTable dt = new DataTable();
        //
        //PlaceHolder
        //
        String[] txt = { "Enviar", "Local Retirada", "Ano", "Km Saída ", "Hora Saída", "Placa", "Marca", "Modelo", "Observação", "Cor", "Apólice", "Local de Destino", "Referência do Destino" };
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

        List<String> destinos = new List<String>();
        List<String> referencias = new List<String>();
        private void Pedidos4_Load(object sender, EventArgs e)
        {
            LoginBLL lo = new LoginBLL();

            lblUsu.Text = lo.getNome();

            if (lo.getNivelAcesso() == 1)
            {
                bbtnServiço.Visible = false;
                bbtnFuncionario.Visible = false;
            }

            dt.Columns.Add("Ordem", typeof(string));
            dt.Columns.Add("Destinos", typeof(string));
            dt.Columns.Add("Referências", typeof(string));

            GridDestino.DataSource = dt;
            GridDestino.Columns[0].Width = 100;

            PedidosBLL peBLL = new PedidosBLL();

            if (peBLL.getClienteFJ().Equals("F"))
                btxtApolice.Visible = false;

            peBLL.setClienteFJ("");
        }

        int d = 0;

        private void bbtnAddDestino_Click(object sender, EventArgs e)
        {
            if (!btxtDestino.Text.Equals("") && !btxtDestino.Text.Equals("Local de Destino"))
            {

                d++;

                destinos.Add(btxtDestino.Text);


                if (btxtRefDest.Text.Equals("") || btxtRefDest.Text.Equals("Referência do Destino"))
                {
                    dt.Rows.Add(d, btxtDestino.Text, "-");
                    referencias.Add("-");
                }
                else
                {
                    dt.Rows.Add(d, btxtDestino.Text, btxtRefDest.Text);
                    referencias.Add(btxtRefDest.Text);
                }

                GridDestino.DataSource = dt;

                btxtDestino.Text = "Local de Destino";
                btxtRefDest.Text = "Referência do Destino";

                btxtRefDest.ForeColor = Color.DarkGray;
                btxtDestino.ForeColor = Color.DarkGray;

                btxtDestino.Focus();
            }
            else
            {
                Mensagem ms = new Mensagem();
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Preencha com um Destino!");
                msBLL.setTitulo("Aviso");
                ms.ShowDialog();
            }
        }

        private void bbtnAutoCadastro_Click(object sender, EventArgs e)
        {
            btxtAno.Text = "2014";
            btxtApolice.Text ="1098F/A";
            btxtCor.Text = "Prata";
            btxtDestino.Text = "Rua Lopes Chaves, 243 - Barra Funda";
            btxtHr.Text = "08:35";
            btxtKmSaida.Text = "10678 Km";
            btxtLocalRet.Text = "Rua João Rudge, 420 - Casa Verde";
            btxtMarca.Text = "Honda";
            btxtModelo.Text = "City";
            btxtObs.Text = "O carro está sem chave";
            btxtPlaca.Text = "FTH-9572";
            btxtRefDest.Text = "Na esquina da rua";
            bDataNasc.Value = DateTime.Today.AddDays(1);
            btxtAno.ForeColor = btxtApolice.ForeColor = btxtCor.ForeColor = btxtDestino.ForeColor = btxtHr.ForeColor = btxtKmSaida.ForeColor = btxtLocalRet.ForeColor = btxtMarca.ForeColor = btxtModelo.ForeColor = btxtObs.ForeColor = btxtPlaca.ForeColor = btxtRefDest.ForeColor = Color.FromArgb(64, 64, 64);
        }

        private void btxtObs_Enter(object sender, EventArgs e)
        {
            if (btxtObs.Text.Equals("Observação"))
                btxtObs.Text = "";
        }

        private void btxtObs_Leave(object sender, EventArgs e)
        {
            if (btxtObs.Text.Equals(""))
                btxtObs.Text = "Observação";
        }

        int linhagrid = -1;
        private void bbtnExcluirDestino_Click(object sender, EventArgs e)
        {
            if (linhagrid == -1)
            {
                Mensagem ms = new Mensagem();
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Selecione um Destino");
                msBLL.setTitulo("Aviso");
                ms.ShowDialog();
            }
            else
            {
                destinos.Remove(destinos[linhagrid]);
                referencias.Remove(referencias[linhagrid]);

                d = 0;

                dt = new DataTable();
                dt.Columns.Add("Ordem", typeof(string));
                dt.Columns.Add("Destinos", typeof(string));
                dt.Columns.Add("Referências", typeof(string));

                GridDestino.DataSource = dt;
                GridDestino.Columns[0].Width = 100;

                for (int i = 0; i < destinos.Count; i++)
                {
                    d++;
                    dt.Rows.Add(i + 1, destinos[i], referencias[i]);
                }

                linhagrid = -1;
            }
        }

        private void GridDestino_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            linhagrid = Convert.ToInt32(GridDestino.CurrentCell.RowIndex);
        }

        private void bDataNasc_onValueChanged(object sender, EventArgs e)
        {
            lblDataServico.Text = (bDataNasc.Value + "").Substring(0, 10);
        }

        private int validar()
        {
            ClasseValida cv = new ClasseValida();
            int i = 0;
            //Local Retirada
            if (cv.ValidaLocal(btxtLocalRet.Text))
            {
                i++;
                btxtLocalRet.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtLocalRet.BorderColorIdle = Color.Red;
            //Ano  
            if (cv.ValidaAno(btxtAno.Text))
            {
                i++;
                btxtAno.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtAno.BorderColorIdle = Color.Red;
            //Km Saída
            if (cv.ValidaKm(btxtKmSaida.Text))
            {
                i++;
                btxtKmSaida.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtKmSaida.BorderColorIdle = Color.Red;
            //Hora Saída
            if (cv.ValidaHora(btxtHr.Text))
            {
                i++;
                btxtHr.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtHr.BorderColorIdle = Color.Red;
            //Placa
            if (cv.ValidaPlaca(btxtPlaca.Text))
            {
                i++;
                btxtPlaca.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtPlaca.BorderColorIdle = Color.Red;
            //Marca
            if (cv.ValidaMarca(btxtHr.Text))
            {
                i++;
                btxtMarca.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtMarca.BorderColorIdle = Color.Red;
            //Modelo
            if (cv.ValidaModelo(btxtModelo.Text))
            {
                i++;
                btxtMarca.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtMarca.BorderColorIdle = Color.Red;
            //Observação
            i++;
            //Data
            if (cv.ValidaData(bDataNasc.Value))
                i++;
            //Cor
            if (cv.ValidaCor(btxtCor.Text))
            {
                i++;
                btxtCor.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtCor.BorderColorIdle = Color.Red;
            //Apólice
            i++;
            //Local de Destino
            if (destinos.Count >= 1)
            {
                i++;
                btxtDestino.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtDestino.BorderColorIdle = Color.Red;

            return i;
        }

        private void bbtnEnviar_Click(object sender, EventArgs e)
        {
            if (validar() == 12)
            {
                Pedidos4BLL pe4BLL = new Pedidos4BLL();
                if (!btxtApolice.Visible)
                    btxtApolice.Text = "-";
                if (pe4BLL.inserirAbertura(btxtLocalRet.Text, btxtAno.Text, btxtHr.Text, btxtKmSaida.Text, btxtModelo.Text, btxtMarca.Text, btxtPlaca.Text, btxtObs.Text, bDataNasc.Value.ToString().Substring(0, 10), btxtCor.Text, btxtApolice.Text))
                {
                    int idChamado = pe4BLL.UltimoId();

                    for (int i = 0; i < destinos.Count; i++)
                    {
                        try {pe4BLL.inserirDestinos(i+1, destinos[i], referencias[i], idChamado);}
                        catch {}
                    }

                    pe4BLL.inserirFuncAber();

                    PedidosBLL peBLL = new PedidosBLL();
                    peBLL.setIdCaminhao(0);
                    peBLL.setIdCliente(0);
                    peBLL.setIdMotorista(0);
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Chamada Cadastrada Com Sucesso!");
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
                    mBLL.setMensagem("Chamada Não Cadastrada!");
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

        private void bbtnLimpar_Click(object sender, EventArgs e)
        {
            Pedidos4 pe4 = new Pedidos4();
            pe4.Show();
            this.Hide();
        }

        private void btxtAno_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar))
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar))
                e.Handled = false;
        }

        private void btxtKmSaida_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar))
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar))
                e.Handled = false;
        }

        private void btxtHr_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar))
                e.Handled = true;
        }

        private void btxtMarca_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsNumber(e.KeyChar))
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar))
                e.Handled = true;
        }

        private void btxtModelo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsNumber(e.KeyChar))
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar))
                e.Handled = true;
        }

        private void btxtCor_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsNumber(e.KeyChar))
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar))
                e.Handled = true;
        }

        private void lblGrid_Click(object sender, EventArgs e)
        {
            PedidosGrid pg = new PedidosGrid();
            pg.Show();
            this.Hide();
        }
    }
}
