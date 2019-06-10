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
using System.Net.Mail;

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
        String[] txt = { "Enviar", "Nome", "Email", "RG", "CEP", "Endereço", "Telefone", "Cidade", "Estado Civil", "Telefone do conjuge", "Nome do conjuge", "CNH", "Carteira de Trabalho", "Salário" };
        private void PlaceHolder_Enter(object sender, EventArgs e)
        {
            Bunifu.Framework.UI.BunifuMetroTextbox btxt = (Bunifu.Framework.UI.BunifuMetroTextbox)sender;
            if (btxt.Text.Equals(txt[btxt.TabIndex - 1]))
            {
                btxt.Text = "";
                btxt.ForeColor = Color.FromArgb(64, 64, 64);
                btxt.BorderColorIdle = Color.FromArgb(2, 136, 209);
            }
        }
        private void PlaceHolder_Leave(object sender, EventArgs e)
        {
            Bunifu.Framework.UI.BunifuMetroTextbox btxt = (Bunifu.Framework.UI.BunifuMetroTextbox)sender;
            if (btxt.Text.Equals(""))
            {
                btxt.Text = txt[btxt.TabIndex - 1];
                btxt.ForeColor = Color.DarkGray;
                btxt.BorderColorIdle = Color.FromArgb(64, 64, 64);
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
            //Estado          
            if (cv.ValidaUF(bdropUF.selectedValue))
                i++;
            //Carteira de Trabalho
            if (cv.ValidaCarteira(btxtCarteira.Text))
            {
                i++;
                btxtCarteira.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
                btxtCarteira.BorderColorIdle = Color.Red;
            //Nome Conjuge
            i++;
            btxtConjuge.BorderColorIdle = Color.FromArgb(64, 64, 64);
            //Data Nascimento
            if (cv.ValidaData(bDataNasc.Value))
                i++;
            //Telefone Conjuge
            i++;
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
            if (cv.ValidaCargo(bDropCargo.selectedValue))
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
            btxtSalario.Text = btxtSalario.Text.Replace(",", ".");
            return i;
        }
        //
        //Enviar Email
        //
        public void EnviarEmail()
        {
            try
            {
                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("autosocorro18@gmail.com", "autosocorrotcm");
                MailMessage mail = new MailMessage();
                mail.Sender = new System.Net.Mail.MailAddress("autosocorro18@gmail.com", "Auto Socorro");
                mail.From = new MailAddress("autosocorro18@gmail.com", "Auto Socorro");
                mail.To.Add(new MailAddress(btxtEmail.Text, btxtNome.Text));
                mail.Subject = "Contato";
                mail.Body = "<h4>Faça seu primeiro Login! </h4><br/><h4>Login: " + btxtNome.Text + "</h4><br/><h4>Senha: " + senha + "</h4>";
                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.High;
                try
                {
                    client.Send(mail);
                }
                catch
                {

                }
                finally
                {

                }
            }
            catch
            {

            }
        }
        //
        //Botões de opções
        //
        private void bbtnLimpar_Click(object sender, EventArgs e)
        {
            bbtnFuncionario_Click(sender, e);
        }

        Random rdn = new Random();
        String senha;

        private void bbtnEnviar_Click(object sender, EventArgs e)
        {
            if (validar() == 16)
            {
                senha = rdn.Next(100000, 999999) + "";
                String telc = "";
                if (btxtTelconjuge.Text.Equals("Telefone do conjuge"))
                    telc = "";
                else
                    telc = btxtTelconjuge.Text;

                String nomec = "";
                if (btxtConjuge.Text.Equals("Nome do conjuge"))
                    nomec = "";
                else
                    nomec = btxtConjuge.Text;

                FuncionarioBLL funcBLL = new FuncionarioBLL();
                if (funcBLL.inserirFunc(btxtNome.Text, btxtEmail.Text, btxtRG.Text, btxtCEP.Text, btxtEnd.Text, btxtCidade.Text, bdropUF.selectedValue, bDataNasc.Value.ToString().Substring(0, 10), btxtTel.Text, btxtCNH.Text, btxtEstadoCivil.Text, nomec, btxtSalario.Text, bDropCargo.selectedValue, telc, btxtCarteira.Text, btxtNome.Text, senha))
                {
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Funcionário Cadastrado com sucesso!");
                    mBLL.setTitulo("Mensagem");
                    Mensagem ms = new Mensagem();
                    ms.ShowDialog();
                    bbtnLimpar_Click(sender, e);
                }
                else
                {
                    MensagemBLL mBLL = new MensagemBLL();
                    mBLL.setMensagem("Funcionário Não Cadastrado!");
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

        private void bbtnAlterar_Click(object sender, EventArgs e)
        {
            FuncionarioBLL funcBLL = new FuncionarioBLL();
            if (!funcBLL.getCod().Equals(""))
            {
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Deseja Realmente Alterar Esse Funcionário");
                msBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                MensagemS_N msn = new MensagemS_N();
                msn.ShowDialog();

                if (msBLL.getSN().Equals("S")) {
                    if (validar() == 16)
                    {
                        String telc = "";
                        if (btxtTelconjuge.Text.Equals("Telefone do conjuge"))
                            telc = "-";
                        else
                            telc = btxtTelconjuge.Text;

                        String nomec = "";
                        if (btxtConjuge.Text.Equals("Nome do conjuge"))
                            nomec = "-";
                        else
                            nomec = btxtConjuge.Text;

                        if (funcBLL.alterarFunc(btxtNome.Text, btxtEmail.Text, btxtRG.Text, btxtCEP.Text, btxtEnd.Text, btxtCidade.Text, bdropUF.selectedValue, bDataNasc.Value.ToString().Substring(0, 10), btxtTel.Text, btxtCNH.Text, btxtEstadoCivil.Text, nomec, btxtSalario.Text, bDropCargo.selectedValue, telc, btxtCarteira.Text, funcBLL.getCod()))
                        {
                            MensagemBLL mBLL = new MensagemBLL();
                            mBLL.setMensagem("Funcionário Alterado Com Sucesso!");
                            mBLL.setTitulo("Mensagem");
                            ms.ShowDialog();
                            funcBLL.setCod("");
                            funcBLL.setLinhaCod("");
                            bbtnLimpar_Click(sender, e);
                        }
                        else
                        {
                            MensagemBLL mBLL = new MensagemBLL();
                            mBLL.setMensagem("Funcionário Não Alterado!");
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
                    funcBLL.setCod("");
                    funcBLL.setLinhaCod("");
                }
            }
            else
            {
                MensagemBLL mBLL = new MensagemBLL();
                mBLL.setMensagem("Selecione Um Funcionário");
                mBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                ms.ShowDialog();
            }
        }

        private void bbtnDeletar_Click(object sender, EventArgs e)
        {
            FuncionarioBLL funcBLL = new FuncionarioBLL();
            if (!funcBLL.getCod().Equals(""))
            {
                MensagemBLL msBLL = new MensagemBLL();
                msBLL.setMensagem("Deseja Realmente Deletar Esse Funcionário");
                msBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                MensagemS_N msn = new MensagemS_N();
                msn.ShowDialog();

                if (msBLL.getSN().Equals("S"))
                {
                    if (funcBLL.deletarFunc(funcBLL.getCod()))
                    {
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Funcionário Deletado Com Sucesso!");
                        mBLL.setTitulo("Mensagem");
                        ms.ShowDialog();
                        funcBLL.setCod("");
                        funcBLL.setLinhaCod("");
                        bbtnLimpar_Click(sender, e);
                    }
                    else
                    {
                        MensagemBLL mBLL = new MensagemBLL();
                        mBLL.setMensagem("Funcionário Não Deletado!");
                        mBLL.setTitulo("Alerta");
                        ms.ShowDialog();
                    }
                }
                else
                {
                    funcBLL.setCod("");
                    funcBLL.setLinhaCod("");
                }
            }
            else
            {
                MensagemBLL mBLL = new MensagemBLL();
                mBLL.setMensagem("Selecione Um Funcionário!");
                mBLL.setTitulo("Alerta");
                Mensagem ms = new Mensagem();
                ms.ShowDialog();
            }
        }


        String[] bdropcargo1 = { "Cargo", "Atendente", "Motorista", "Gerente" };
        String[] bdropcargo2 = { "Atendente", "Motorista", "Gerente" };
        String[] bdropUF1 = { "UF", "AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO" };
        String[] bdropUF2 = { "AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO" };

        private void Funcionario_Load(object sender, EventArgs e)
        {
            bDropCargo.Items = bdropcargo1;
            bDropCargo.selectedIndex = 0;

            bdropUF.Clear();
            for (int i = 0; i < 28; i++)
            {
                bdropUF.AddItem(bdropUF1[i]);
            }
            bdropUF.selectedIndex = 0;

            FuncionarioBLL funcBLL = new FuncionarioBLL();
            if (!funcBLL.getLinhaCod().Equals(""))
            {
                DataTable dt = new DataTable();
                dt = funcBLL.pesquisarTodosFunc();
                int Linha = Convert.ToInt16(funcBLL.getLinhaCod());
                String[] Dados = { dt.Rows[Linha]["Nome"].ToString(), dt.Rows[Linha]["Email"].ToString(), dt.Rows[Linha]["Numero_Documento"].ToString(), dt.Rows[Linha]["CEP"].ToString(), dt.Rows[Linha]["Endereco"].ToString(), dt.Rows[Linha]["Telefone"].ToString(), dt.Rows[Linha]["Cidade"].ToString(), dt.Rows[Linha]["Estado_Civil"].ToString(), dt.Rows[Linha]["Telefone_Conjuge"].ToString(), dt.Rows[Linha]["Conjuge"].ToString(), dt.Rows[Linha]["CNH"].ToString(), dt.Rows[Linha]["Carteira_de_Trabalho"].ToString(), dt.Rows[Linha]["Salario"].ToString() };

                foreach (Control c in this.Controls)
                {
                    int i = 0;
                    if (c.TabIndex >= 2 && c.TabIndex <= 14)
                    {
                        i++;
                        c.Text = Dados[c.TabIndex - 2];
                        c.ForeColor = Color.FromArgb(60, 60, 60);
                    }
                }
                String Cargo = dt.Rows[Linha]["Cargo"].ToString();
                String UF = dt.Rows[Linha]["Estado"].ToString();
                String Data = dt.Rows[Linha]["Data_de_Nascimento"].ToString();

                bdropUF.Clear();
                for (int i = 0; i < 27; i++)
                {
                    bdropUF.AddItem(bdropUF2[i]);
                }
                bdropUF.selectedIndex = 0;
                for (int i = 0; i <= bdropUF2.Length - 1; i++)
                {
                    if (UF.Equals(bdropUF2[i]))
                    {
                        bdropUF.selectedIndex = i;
                    }
                }

                bDataNasc.Value = Convert.ToDateTime(Data);

                bDropCargo.Items = bdropcargo2;
                bDropCargo.selectedIndex = 0;
                for (int i = 0; i <= bdropcargo2.Length - 1; i++)
                {
                    if (Cargo.Equals(bdropcargo2[i]))
                    {
                        bDropCargo.selectedIndex = i;
                    }
                }
            }
        }

        private void bDropCargo_Enter(object sender, EventArgs e)
        {
            bDropCargo.Items = bdropcargo2;
        }

        private void bDataNasc_onValueChanged(object sender, EventArgs e)
        {
            String data = (DateTime.Now.Date + "").Substring(0, 10);
            if ((bDataNasc.Value.Date + "").Substring(0, 10).Equals(data))
                lblData.Text = "Data de Nascimento";
            else
                lblData.Text = (bDataNasc.Value + "").Substring(0, 10);
        }
        //
        //Máscara Salário
        //
        private void btxtSalario_Leave(object sender, EventArgs e)
        {
            if (btxtSalario.Text.Equals(""))
            {
                btxtSalario.Text = "Salário";
                btxtSalario.ForeColor = Color.DarkGray;
                btxtSalario.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
            {
                double n = 0;
                if (double.TryParse(btxtSalario.Text, out n))
                {
                    btxtSalario.Text = "R$" + btxtSalario.Text;
                    if (!btxtSalario.Text.Contains("."))
                    {
                        if (!btxtSalario.Text.Contains(","))
                            btxtSalario.Text = btxtSalario.Text + ".00";
                        else
                            btxtSalario.Text = btxtSalario.Text.Replace(",", ".");
                    }
                }
            }
        }

        private void btxtSalario_OnValueChanged(object sender, EventArgs e)
        {
            double n = 0;
            if (btxtSalario.Text.Equals("."))
            {
                btxtSalario.Text = "";
            }
            else if (btxtSalario.Text.Equals(","))
            {
                btxtSalario.Text = "";
            }
            if (!btxtSalario.Text.Equals("Salário"))
            {
                if (!btxtSalario.Text.Contains("."))
                {
                    if (!btxtSalario.Text.Contains(","))
                    {
                        if (!btxtSalario.Text.Contains("R$"))
                        {
                            if (!double.TryParse(btxtSalario.Text, out n))
                                btxtSalario.Text = "";
                        }
                    }
                }
            }
        }

        private void btxtTel_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
                e.Handled = true;
        }

        private void btxtSalario_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
                e.Handled = true;
            if (Char.IsSymbol(e.KeyChar) == true)
                e.Handled = true;
        }

        private void bdropUF_Enter(object sender, EventArgs e)
        {
            bdropUF.Clear();
            for (int i = 0; i < 27; i++)
            {
                bdropUF.AddItem(bdropUF2[i]);
            }
            bdropUF.selectedIndex = 0;
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

        private void btxtCEP_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar) == true)
            {
                if (e.KeyChar == '-')
                    e.Handled = false;
                else
                    e.Handled = true;
            }
        }

        private void btxtCidade_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsNumber(e.KeyChar) == true)
                e.Handled = true;
            if (Char.IsPunctuation(e.KeyChar) == true)
                e.Handled = true;
        }

        private void btxtEstadoCivil_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsNumber(e.KeyChar) == true)
                e.Handled = true;
        }

        private void btxtTelconjuge_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
                e.Handled = true;
        }

        private void btxtConjuge_KeyPress(object sender, KeyPressEventArgs e)
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

        private void btxtCarteira_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
                e.Handled = true;
        }

        private void btxtRG_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
            {
                if (e.KeyChar == 'x')
                    e.Handled = false;
                else
                    e.Handled = true;
            }
            if (Char.IsPunctuation(e.KeyChar) == true)
            {
                if (e.KeyChar == '-' || e.KeyChar == '.')
                    e.Handled = false;
                else
                    e.Handled = true;
            }
        }

        private void btxtCEP_Leave(object sender, EventArgs e)
        {
            if (btxtCEP.Text.Equals(""))
            {
                btxtCEP.Text = "CEP";
                btxtCEP.ForeColor = Color.DarkGray;
                btxtCEP.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
            {
                if (btxtCEP.Text.Length == 8)
                {
                    String cep = "";
                    cep = btxtCEP.Text.Substring(5);
                    btxtCEP.Text = btxtCEP.Text.Substring(0, 5) + "-" + cep;
                }
            }
        }

        private void btxtTel_Leave(object sender, EventArgs e)
        {
            if (btxtTel.Text.Equals(""))
            {
                btxtTel.Text = "Telefone";
                btxtTel.ForeColor = Color.DarkGray;
                btxtTel.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
            {
                if (btxtTel.Text.Length == 11)
                {
                    String tel = btxtTel.Text;
                    btxtTel.Text = "(" + tel[0] + "" + tel[1] + ")" + tel[2] + "" + tel[3] + "" + tel[4] + "" + tel[5] + "" + tel[6] + "-" + tel[7] + "" + tel[8] + "" + tel[9] + "" + tel[10];
                }
            }
        }

        private void btxtTelconjuge_Leave(object sender, EventArgs e)
        {
            if (btxtTelconjuge.Text.Equals(""))
            {
                btxtTelconjuge.Text = "Telefone do conjuge";
                btxtTelconjuge.ForeColor = Color.DarkGray;
                btxtTelconjuge.BorderColorIdle = Color.FromArgb(64, 64, 64);
            }
            else
            {
                if (btxtTelconjuge.Text.Length == 11)
                {
                    String tel = btxtTelconjuge.Text;
                    btxtTelconjuge.Text = "(" + tel[0] + "" + tel[1] + ")" + tel[2] + "" + tel[3] + "" + tel[4] + "" + tel[5] + "" + tel[6] + "-" + tel[7] + "" + tel[8] + "" + tel[9] + "" + tel[10];
                }
            }
        }

        String[] AutoCad = { "Eduardo Rocha Santos", "lucbonnet10@gmail.com", "13901484-x", "04132-000", "Rua Jesuíno de Arruda", "(11)96783-2965", "São Paulo", "Casado", "(11)93789-5092", "Rosângela Louise Santos", "01246497344", "345.92951.31-0", "R$4000.00" };
        private void bbtnAutoCadastro_Click(object sender, EventArgs e)
        {
            int i = 0;
            foreach (Control c in this.Controls)
            {
                if (c.TabIndex >= 2 && c.TabIndex <= 14)
                {
                    i++;
                    c.Text = AutoCad[c.TabIndex - 2];
                    c.ForeColor = Color.FromArgb(60, 60, 60);
                }
            }
            bDropCargo.selectedIndex = 2;
            bDataNasc.Value = Convert.ToDateTime("06/08/1957");
            bdropUF.selectedIndex = 25;
        }

        private void btxtCNH_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar) == true)
                e.Handled = true;
        }

        private void lblGrid_MouseHover(object sender, EventArgs e)
        {
            lblGrid.ForeColor = Color.FromArgb(2, 136, 209);
        }

        private void lblGrid_MouseLeave(object sender, EventArgs e)
        {
            lblGrid.ForeColor = Color.FromArgb(1, 87, 155);
        }

        private void lblGrid_Click(object sender, EventArgs e)
        {
            FuncionarioGrid fung = new FuncionarioGrid();
            fung.Show();
            this.Hide();
        }

        private void bbtnClienteJuridico_Click(object sender, EventArgs e)
        {
            ClienteJu clij = new ClienteJu();
            clij.Show();
            this.Hide();
        }

        private void bbtnServiço_Click(object sender, EventArgs e)
        {

        }
    }
}
