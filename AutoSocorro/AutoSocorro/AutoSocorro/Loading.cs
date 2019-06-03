using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AutoSocorro
{
    public partial class Loading : Form
    {
        public Loading()
        {
            InitializeComponent();
        }

        int c = 0;

        private void timer_Tick(object sender, EventArgs e)
        {
            c++;
            bpbloading.Value = c;
            label1.Text = c + "%";
            picCam.Location = new Point(picCam.Location.X + 3, picCam.Location.Y);
            if (c == 100)
            {
                timer.Enabled = false;
                Home ho = new Home();
                ho.Show();
                this.Hide();
            }
        }

        private void Loading_Load(object sender, EventArgs e)
        {
            timer.Enabled = true;
        }

    }
}
