using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{

    public partial class LayoutInicial : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            string falec = (Request.QueryString["c"]);
            if (falec == "T")
            {
                //this.Controls.Add(new LiteralControl("<script>document.getElementById('fale1').click();</ script>"));
                this.Controls.Add(new LiteralControl("<script>$(document).ready(function(){$(\"#fale1\").trigger(\"click\");});</script>"));
            }
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
            try
            {
                //cemail.enviarEmail(email);
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("facilmtofacil@gmail.com", "faafaaf123@");
                MailMessage mail = new MailMessage();
                mail.To.Add("facilmtofacil@gmail.com");
                mail.From = new MailAddress("facilmtofacil@gmail.com");
                mail.Subject = "Fale Conosco de: " + email.getNome();
                mail.Body = email.getMens() + "\n Mensagem de " + email.getEmail();
                smtpClient.Send(mail);

                txtEmail.Text = "";
                txtMensagem.Text = "";
                txtNome.Text = "";
            }
            catch(Exception er)
            {
                txtEmail.Text = "error";
                txtMensagem.Text = er.Message;
                txtNome.Text = "error";
            }
            

           



            
        }
    }
}