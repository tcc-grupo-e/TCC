using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{
    public partial class CadastroF : System.Web.UI.Page
    {
        //protected void Page1_Load(object sender, EventArgs e)
        //{

        //}

        ClasseConexao xx = new ClasseConexao();
        DataSet ds = new DataSet();

        public ClasseConexao ClasseConexao1
        {
            get
            {
                throw new System.NotImplementedException();
            }

            set
            {
            }
        }

        protected void BtnCadastroFisica_Click(object sender, EventArgs e)
        {
            ds = new DataSet();

            xx = new ClasseConexao();
            if (txtEmailF.Text == txtReEmailF.Text && txtSenhaF.Text == txtReSenhaF.Text)
            {
                ds = xx.executa_sql("insert into Cliente values  ('" + txtNomeF.Text + "','PF','" + txtTelF.Text + "', '" + txtCel.Text + "', '" + txtEmailF.Text + "','" + txtNomeUsuF.Text + "', '" + txtSenhaF.Text + "')");
                Response.Redirect("Home.aspx");
            }
            if (txtSenhaF.Text != txtReSenhaF.Text)
            {
                txtSenhaF.Text = "";
                txtReSenhaF.Text = "";
                txtSenhaF.Focus();
                lblSenhaF.Text = "Por favor insira a mesma senha nos dois campos";
            }
            if (txtEmailF.Text != txtReEmailF.Text)
            {
                txtEmailF.Text = "";
                txtReEmailF.Text = "";
                txtEmailF.Focus();
                lblEmailF.Text = "Por favor insira o mesmo Email nos dois campos";
            }
            
        }

        protected void txtNomeF_Load(object sender, EventArgs e)
        {
            txtNomeF.Text = "Juninho Play";
            txtEmailF.Text = "jun.play@gmail.com";
            txtNomeUsuF.Text = "User";
            txtCel.Text = "998965491";
            txtReEmailF.Text = "jun.play@gmail.com";
            txtReSenhaF.Text = "1200";
            txtSenhaF.Text = "1200";
            txtTelF.Text = "45679876";
        }
    }
}