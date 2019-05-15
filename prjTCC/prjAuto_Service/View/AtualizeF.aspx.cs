using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{
    public partial class AtualizeF : System.Web.UI.Page
    {
        ClasseConexao xx = new ClasseConexao();
        DataSet ds = new DataSet();

       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logado"] != "1")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                xx = new ClasseConexao();
                ds = new DataSet();
                ds = xx.executa_sql("select * from Cliente where Email = '" + Session["Email"] +"'");
                txtNomeF.Attributes.Add("placeholder", "Antigo: " + ds.Tables[0].Rows[0]["Nome"].ToString());
               
                txtTelF.Attributes.Add("placeholder", "Antigo: " + ds.Tables[0].Rows[0]["Telefone"].ToString());
                txtCel.Attributes.Add("placeholder", "Antigo: " + ds.Tables[0].Rows[0]["Celular"].ToString());
                txtEmailF.Attributes.Add("placeholder", "Antigo: " + ds.Tables[0].Rows[0]["Email"].ToString());
                txtNomeUsuF.Attributes.Add("placeholder", "Antigo: " + ds.Tables[0].Rows[0]["Usuario"].ToString());
               
            }
        }

        

        protected void btnAtualizeFisica_Click(object sender, EventArgs e)
        {
            ds = new DataSet();

            xx = new ClasseConexao();
            if (txtSenhaF.Text == txtReSenhaF.Text)
            {
                
                ds = xx.executa_sql("update Cliente set Nome = '" + txtNomeF.Text + "', Telefone = '" + txtTelF.Text + "', Celular = '" + txtCel.Text + "', Email = '" + txtEmailF.Text + "', Usuario = '" + txtNomeUsuF.Text + "', Senha = '" + txtSenhaF.Text + "' where Email = '" + Session["Email"]+ "'" );
                Session["Email"] = txtEmailF.Text;
                Response.Redirect("Home.aspx");
            }
            if (txtSenhaF.Text != txtReSenhaF.Text)
            {
                txtSenhaF.Text = "";
                txtReSenhaF.Text = "";
                txtSenhaF.Focus();
                lblSenhaF.Text = "Por favor insira a mesma senha nos dois campos";
            }
            //if (txtEmailF.Text != txtReEmailF.Text)
            //{
            //    txtEmailF.Text = "";
            //    txtReEmailF.Text = "";
            //    txtEmailF.Focus();
            //    lblEmailF.Text = "Por favor insira o mesmo Email nos dois campos";
            //}
            
           
        }
    }
}