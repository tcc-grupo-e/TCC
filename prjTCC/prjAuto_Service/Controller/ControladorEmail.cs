using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

namespace prjAuto_Service.Controller
{
    public class ControladorEmail
    {
        #region Enviar
        public void enviarEmail(Model.Email email)
        {
            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("facilmtofacil@gmail.com", "facil1234");
            MailMessage mail = new MailMessage();
            mail.Sender = new System.Net.Mail.MailAddress("facilmtofacil@gmail.com", "Teste");
            mail.From = new MailAddress("facilmtofacil@gmail.com", "Teste");
            mail.To.Add(new MailAddress("facilmtofacil@gmail.com", "Teste"));
            mail.Subject = "Fale Conosco de: " + email.getNome();
            mail.Body = email.getMens() + "\n Mensagem de " + email.getEmail();
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            try
            {
                client.Send(mail);
                

            }
            catch (System.Exception erro)
            {
                

            }
            

        }
        #endregion Enviar

    }
}