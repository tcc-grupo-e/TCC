using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{
    public partial class LayoutInicial : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        ClasseConexao xx = new ClasseConexao();
        DataSet ds = new DataSet();
        protected void btnValidar_Click(object sender, EventArgs e)
        {
            xx = new ClasseConexao();
            ds = new DataSet();
           
            ds = xx.executa_sql("select * from Cliente WHERE Usuario = '"+txtLogin.Text+ "' and Senha = '" + txtSenha.Text + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["logado"] = "1";
                Session["Email"] = ds.Tables[0].Rows[0]["Email"].ToString(); 
                txtSenha.BorderColor = System.Drawing.Color.Green;
                txtLogin.BorderColor = System.Drawing.Color.Green;
              
                
            }
            else
            {
                Session["logado"] = "0";
                txtSenha.BorderColor = System.Drawing.Color.Red;
                txtLogin.BorderColor = System.Drawing.Color.Red;
                

            }

        }

        public Home Home_master
        {
            get
            {
                throw new System.NotImplementedException();
            }

            set
            {
            }
        }

        

        protected void btnLogoff_Click(object sender, EventArgs e)
        {
            Session["logado"] = "0";
            Session["Email"] = "deslogado";
        }
    }
}