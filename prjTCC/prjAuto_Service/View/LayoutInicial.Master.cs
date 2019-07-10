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

        Model.Email email = new Model.Email();
        Controller.ControladorEmail cemail = new Controller.ControladorEmail();
        ClasseConexao xx = new ClasseConexao();
        DataSet ds = new DataSet();
        protected void btnValidar_Click(object sender, EventArgs e)
        {
            
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

        protected void Enviar_Click(object sender, EventArgs e)
        {
            /* dentro do método de click*/
            email.setEmail(txtEmail.Text);
            email.setNome(txtNome.Text);
            email.setMens(txtMensagem.Text);

            txtEmail.Text = "";
            txtMensagem.Text = "";
            txtNome.Text = "";

           



            cemail.enviarEmail(email);
        }
    }
}