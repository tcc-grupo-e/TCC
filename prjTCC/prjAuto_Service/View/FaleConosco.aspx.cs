using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjAuto_Service
{
    public partial class FaleConosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
  
        }
        Boolean a;
        public void Enviar_Email()
        {
            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("facilmtofacil@gmail.com", "facil1234");
            MailMessage mail = new MailMessage();
            mail.Sender = new System.Net.Mail.MailAddress("facilmtofacil@gmail.com", "Teste");
            mail.From = new MailAddress("facilmtofacil@gmail.com", "Teste");
            mail.To.Add(new MailAddress("facilmtofacil@gmail.com", "Teste"));
            mail.Subject = "Fale Conosco de: " + txtNome.Text;
            mail.Body = txtArea.Text + "\n Mensagem de "+ txtEmail.Text;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            try
            {
                client.Send(mail);
                Response.Write("<script>alert('Email enviado!');</script>");
             
            }
            catch (System.Exception erro)
            {
                Response.Write("<script>alert('Error (Verifique os dados inseridos)');</script>");
                
            }
            finally
            {
                mail = null;
                txtEmail.Text = "";
                txtNome.Text = "";
                txtArea.Text = "";
                
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Enviar_Email(); 

            Response.Redirect("Home.aspx");

        }
    }
}