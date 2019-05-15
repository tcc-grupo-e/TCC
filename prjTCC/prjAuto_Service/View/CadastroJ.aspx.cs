using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{
    public partial class CadastroJ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ClasseConexao xx = new ClasseConexao();
        DataSet ds = new DataSet();

        protected void btnCadastroJuridica_Click(object sender, EventArgs e)
        {
            ds = new DataSet();

            xx = new ClasseConexao();
            if (txtEmailJ.Text == txtReEmailJ.Text && txtSenhaJ.Text == txtReSenhaJ.Text)
            {
                ds = xx.executa_sql("insert into Cliente values  ('" + txtNomeJ.Text + "','PJ','" + txtTelJ.Text + "', '" + txtCel.Text + "', '" + txtEmailJ.Text + "','" + txtNomeUsuJ.Text + "', '" + txtSenhaJ.Text + "')");
                Response.Redirect("Home.aspx");
            }
            if (txtSenhaJ.Text != txtReSenhaJ.Text)
            {
                txtSenhaJ.Text = "";
                txtReSenhaJ.Text = "";
                txtSenhaJ.Focus();
                lblSenhaJ.Text = "Por Favor insira a mesma senha nos dois campos";
            }
            if (txtEmailJ.Text != txtReEmailJ.Text)
            {
                txtEmailJ.Text = "";
                txtReEmailJ.Text = "";
                txtEmailJ.Focus();
                lblEmailJ.Text = "Por Favor insira o mesmo Email nos dois campos";
            }
            
        }

        public ClasseConexao ClasseConexao
        {
            get
            {
                throw new System.NotImplementedException();
            }

            set
            {
            }
        }
    }
}