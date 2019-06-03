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
    public partial class Mensagem : Form
    {
        public Mensagem()
        {
            InitializeComponent();
        }

        private void Mensagem_Load(object sender, EventArgs e)
        {
            MensagemBLL ms = new MensagemBLL();
            lblTitulo.Text = ms.getMensagem();
            lblMensagem.Text = ms.getMensagem();
        }
    }
}
