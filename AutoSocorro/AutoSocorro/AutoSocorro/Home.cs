using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AutoSocorro
{
    public partial class Home : Form
    {
        public Home()
        {
            InitializeComponent();
        }
        String ano = "";
        String mes = "";
        Label lblDayz;
        Int32 y = 0;
        Int32 x;
        Int32 ndayz;
        String Dayofweek, CurrentCulture;
        String btnMeses = "";

        int VerificaDia()
        {
            DateTime time = Convert.ToDateTime("01/" + mes + "/" + ano);
            //pega o dia de inicio da semana para data informada
            Dayofweek = Application.CurrentCulture.Calendar.GetDayOfWeek(time).ToString();
            if (Dayofweek == "Sunday")
            {
                x = 0;
            }
            else if (Dayofweek == "Monday")
            {
                x = 0 + 63;
                ndayz = 1;
            }
            else if (Dayofweek == "Tuesday")
            {
                x = 0 + 63 + 63;
                ndayz = 2;
            }
            else if (Dayofweek == "Wednesday")
            {
                x = 0 + 63 + 63 + 63;
                ndayz = 3;
            }
            else if (Dayofweek == "Thursday")
            {
                x = 0 + 63 + 63 + 63 + 63;
                ndayz = 4;
            }
            else if (Dayofweek == "Friday")
            {
                x = 0 + 63 + 63 + 63 + 63 + 63;
                ndayz = 5;
            }
            else if (Dayofweek == "Saturday")
            {
                x = 0 + 63 + 63 + 63 + 63 + 63 + 63;
                ndayz = 6;
            }
            return x;

        }

        private void bbtnFechar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void bbtnMinimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void btnAnterior_Click(object sender, EventArgs e)
        {
            try
            {
                lblAno.Text = ano;
                Int32 mesAtual, anoAtual;
                anoAtual = Convert.ToInt32(ano);
                mesAtual = Convert.ToInt32(mes);
                if (mesAtual == 1)
                {
                    anoAtual -= 1;
                    mesAtual = 12;
                    ano = anoAtual.ToString();
                    mes = mesAtual.ToString();
                }
                else
                {
                    mesAtual -= 1;
                    mes = mesAtual.ToString();
                }
                lblAno.Text = anoAtual.ToString();
                //remove all the controls in the panel
                panel4.Controls.Clear();
                Thread.CurrentThread.CurrentCulture = new CultureInfo(CurrentCulture);
                //display the selected month's fullname
                String nomMes = Application.CurrentCulture.DateTimeFormat.GetMonthName(Convert.ToInt32(mes));
                labelMes.ButtonText = (nomMes[0].ToString()).ToUpper();
                for (int i = 1; i < nomMes.Length; i++)
                {
                    labelMes.ButtonText = labelMes.ButtonText + nomMes[i];
                }
                Thread.CurrentThread.CurrentCulture = new CultureInfo("pt-BR");
                Int32 Dayz = DateTime.DaysInMonth(Convert.ToInt32(ano), Convert.ToInt32(mes));
                VerificaDia();
                for (Int32 i = 1; i < Dayz + 1; i++)
                {
                    ndayz += 1;

                    lblDayz = new Label();
                    lblDayz.Text = i.ToString();
                    lblDayz.Name = "lbl" + i;
                    lblDayz.BorderStyle = BorderStyle.Fixed3D;
                    Int32 mon = Convert.ToInt32(mes);
                    Int32 year = Convert.ToInt32(ano);
                    if ((i == DateTime.Now.Day) && (mon == DateTime.Now.Month) && (year == DateTime.Now.Year))
                    {
                        lblDayz.BackColor = Color.FromArgb(2,119,189);
                        lblDayz.ForeColor = Color.White;
                    }
                    else if (ndayz == 01)
                    {
                        lblDayz.ForeColor = Color.Red;
                        lblDayz.BackColor = Color.Gainsboro;
                    }
                    else
                    {
                        lblDayz.BackColor = Color.Gainsboro;
                    }
                    lblDayz.Font = label31.Font;
                    lblDayz.Cursor = Cursors.Hand;
                    lblDayz.Click += new System.EventHandler(this.lblDayz_Click);
                    lblDayz.SetBounds(x, y, 57, 30);

                    x += 63;
                    if (ndayz == 7)
                    {
                        x = 0;
                        ndayz = 0;
                        y += 32;
                    }
                    if (!panel8.Visible)
                    {
                        panel4.Controls.Add(lblDayz);
                    }
                }
                x = 0;
                ndayz = 0;
                y = 0;
            }
            catch (FormatException)
            {
                MessageBox.Show("Data inválida");
            }
            catch (NullReferenceException)
            {
                MessageBox.Show("Data inválida");
            }
        }

        private void btnProximo_Click(object sender, EventArgs e)
        {
            try
            {
                Int32 mesAtual, anoAtual;
                anoAtual = Convert.ToInt32(ano);
                mesAtual = Convert.ToInt32(mes);
                if (mesAtual == 12)
                {
                    anoAtual += 1;
                    mesAtual = 1;
                    ano = anoAtual.ToString();
                    mes = mesAtual.ToString();
                }
                else
                {
                    mesAtual += 1;
                    mes = mesAtual.ToString();
                }
                lblAno.Text = anoAtual.ToString();
                //remove todos os controles do painel
                panel4.Controls.Clear();
                Thread.CurrentThread.CurrentCulture = new CultureInfo(CurrentCulture);
                //exibe o nome completo do mes selecionado
                String nomMes = Application.CurrentCulture.DateTimeFormat.GetMonthName(Convert.ToInt32(mes));
                labelMes.ButtonText = (nomMes[0].ToString()).ToUpper();
                for (int i = 1; i < nomMes.Length; i++)
                {
                    labelMes.ButtonText = labelMes.ButtonText + nomMes[i];
                }
                Thread.CurrentThread.CurrentCulture = new CultureInfo("pt-BR");
                Int32 Dayz = DateTime.DaysInMonth(Convert.ToInt32(ano), Convert.ToInt32(mes));
                VerificaDia();
                for (Int32 i = 1; i < Dayz + 1; i++)
                {
                    ndayz += 1;

                    lblDayz = new Label();
                    lblDayz.Text = i.ToString();
                    lblDayz.Name = "lbl" + i;
                    lblDayz.BorderStyle = BorderStyle.Fixed3D;
                    Int32 mon = Convert.ToInt32(mes);
                    Int32 year = Convert.ToInt32(ano);
                    if ((i == DateTime.Now.Day) && (mon == DateTime.Now.Month) && (year == DateTime.Now.Year))
                    {
                        lblDayz.BackColor = Color.FromArgb(2, 119, 189);
                        lblDayz.ForeColor = Color.White;
                    }
                    else if (ndayz == 01)
                    {
                        //destaca os domingos com cor diferente
                        lblDayz.ForeColor = Color.Red;
                        lblDayz.BackColor = Color.Gainsboro;
                    }
                    else
                    {
                        //define a cor dos outros dias do mes
                        lblDayz.BackColor = Color.Gainsboro;
                    }
                    lblDayz.Font = label31.Font;
                    lblDayz.Cursor = Cursors.Hand;
                    lblDayz.Click += new System.EventHandler(this.lblDayz_Click);
                    lblDayz.SetBounds(x, y, 57, 30);

                    x += 63;
                    if (ndayz == 7)
                    {
                        x = 0;
                        ndayz = 0;
                        y += 32;
                    }
                    if (!panel8.Visible)
                    {
                        panel4.Controls.Add(lblDayz);
                    }
                }
                x = 0;
                ndayz = 0;
                y = 0;
            }
            catch (FormatException)
            {
                MessageBox.Show("data inválida");
            }
            catch (NullReferenceException)
            {
                MessageBox.Show("data inválida");
            }
        }

        private void labelMes_Click(object sender, EventArgs e)
         {
            if (!panel8.Visible)
            {
                panel8.Visible = true;
                panel8.Enabled = true;
                panel9.Visible = true;
                panel9.Enabled = true;
                panel4.Controls.Clear();
            }
            else
            {
                panel8.Visible = false;
                panel8.Enabled = false;
                panel9.Visible = false;
                panel9.Enabled = false;     
                switch(labelMes.ButtonText)
                {
                    case "Janeiro":
                        bbtnJan_Click(sender, e);
                        break;
                    case "Fevereiro":
                        bbtnFev_Click(sender, e);
                        break;
                    case "Março":
                        bbtnMar_Click(sender, e);
                        break;
                    case "Abril":
                        bbtnAbril_Click(sender, e);
                        break;
                    case "Maio":
                        bbtnMai_Click(sender, e);
                        break;
                    case "Junho":
                        bbtnJun_Click(sender, e);
                        break;
                    case "Julho":
                        bbtnJul_Click(sender, e);
                        break;
                    case "Agosto":
                        bbtnAgo_Click(sender, e);
                        break;
                    case "Setembro":
                        bbtnSet_Click(sender, e);
                        break;
                    case "Outubro":
                        bbtnOut_Click(sender, e);
                        break;
                    case "Novembro":
                        bbtnNov_Click(sender, e);
                        break;
                    case "Dezembro":
                        bbtnDez_Click(sender, e);
                        break;
                }
            }

        }
        private void bbtnJan_Click(object sender, EventArgs e)
        {
            btnMeses = "1";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnFev_Click(object sender, EventArgs e)
        {
            btnMeses = "2";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnMar_Click(object sender, EventArgs e)
        {
            btnMeses = "3";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnAbril_Click(object sender, EventArgs e)
        {
            btnMeses = "4";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnMai_Click(object sender, EventArgs e)
        {
            btnMeses = "5";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnJun_Click(object sender, EventArgs e)
        {
            btnMeses = "6";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnJul_Click(object sender, EventArgs e)
        {
            btnMeses = "7";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnAgo_Click(object sender, EventArgs e)
        {
            btnMeses = "8";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnSet_Click(object sender, EventArgs e)
        {
            btnMeses = "9";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnOut_Click(object sender, EventArgs e)
        {
            btnMeses = "10";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnNov_Click(object sender, EventArgs e)
        {
            btnMeses = "11";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
        }

        private void bbtnDez_Click(object sender, EventArgs e)
        {
            btnMeses = "12";
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            Home_Load(sender, e);
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

        private void lblData_Click(object sender, EventArgs e)
        {
            panel8.Visible = false;
            panel8.Enabled = false;
            panel9.Visible = false;
            panel9.Enabled = false;
            lblDiaEsc.Text = lblData.Text;
            Home_Load(sender, e);
        }

        private void panel5_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel8_Paint(object sender, PaintEventArgs e)
        {

        }

        private void Home_Load(object sender, EventArgs e)
        {
            lblData.Text = DateTime.Now.Date.ToString();
            lblData.Text = lblData.Text.Substring(0, 10);
            lblDiaEsc.Text = lblData.Text;
            panel4.Controls.Clear();
            if (btnMeses.Equals(""))
            {
                mes = DateTime.Now.Month.ToString();
            }
            else
            {
                mes = btnMeses;
                btnMeses = "";
            }
            String nomMes = Application.CurrentCulture.DateTimeFormat.GetMonthName(Convert.ToInt32(mes));
            labelMes.ButtonText = (nomMes[0].ToString()).ToUpper();
            for (int i = 1; i < nomMes.Length; i++)
            {
                labelMes.ButtonText = labelMes.ButtonText + nomMes[i];
            }
            ano = DateTime.Now.Year.ToString();
            lblAno.Text = ano;
            CurrentCulture = Application.CurrentCulture.Name;
            Thread.CurrentThread.CurrentCulture = new CultureInfo("pt-BR");
            //obtem o numero de dias do mes e ano selecionado
            Int32 Dayz = DateTime.DaysInMonth(DateTime.Now.Year, Convert.ToInt32(mes));
            VerificaDia();
            for (Int32 i = 1; i < Dayz + 1; i++)
            {
                ndayz += 1;
                lblDayz = new Label();
                lblDayz.Name = "lbl" + i;
                lblDayz.Text = i.ToString();
                lblDayz.BorderStyle = BorderStyle.Fixed3D;
                if (i == DateTime.Now.Day && mes.Equals(DateTime.Now.Month.ToString()))
                {
                    lblDayz.BackColor = Color.FromArgb(2, 119, 189);
                    lblDayz.ForeColor = Color.White;
                }
                else if (ndayz == 01)
                {
                    lblDayz.ForeColor = Color.Red;
                    lblDayz.BackColor = Color.Gainsboro;
                }
                else
                {
                    lblDayz.BackColor = Color.Gainsboro;
                }
                lblDayz.Font = label31.Font;
                lblDayz.Cursor = Cursors.Hand;
                lblDayz.Click += new System.EventHandler(this.lblDayz_Click);
                lblDayz.SetBounds(x, y, 57, 30);
                x += 63;
                if (ndayz == 7)
                {
                    x = 0;
                    ndayz = 0;
                    y += 32;
                }
                if (!panel8.Visible)
                {
                    panel4.Controls.Add(lblDayz);
                }
            }
            x = 0;
            ndayz = 0;
            y = 0;
        }

        private void bbtnNovoPed_Click(object sender, EventArgs e)
        {
            bbtnPedido_Click(sender, e);
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

        private void bbtnChamadas_Click(object sender, EventArgs e)
        {
            PedidosGrid pegrid = new PedidosGrid();
            pegrid.Show();
            this.Hide();
        }

        private void lblDayz_Click(object sender, EventArgs e)
        {
            Label lbl = sender as Label;
            String DiaEscolhido = lbl.Name.Substring(3);
            String m = mes;
            if (DiaEscolhido.Length == 1)
                DiaEscolhido = "0" + DiaEscolhido;
            if (m.Length == 1)
                m = "0" + m;
            lblDiaEsc.Text = DiaEscolhido + "/" + m + "/" + ano;
        }
    }
}
