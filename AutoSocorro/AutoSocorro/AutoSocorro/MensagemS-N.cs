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
    public partial class MensagemS_N : Form
    {
        public MensagemS_N()
        {
            InitializeComponent();
        }

        private void MensagemS_N_Load(object sender, EventArgs e)
        {
            MensagemBLL ms = new MensagemBLL();
            lblTitulo.Text = ms.getTitulo();
            lblMensagem.Text = ms.getMensagem();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MensagemBLL ms = new MensagemBLL();
            ms.setSN("S");
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            MensagemBLL ms = new MensagemBLL();
            ms.setSN("N");
            this.Hide();
        }
    }
}
