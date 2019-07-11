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
            
            try
            {
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("facilmtofacil@gmail.com", "facil1234");
                MailMessage mail = new MailMessage();
                mail.To.Add("facilmtofacil@gmail.com");
                mail.From = new MailAddress("facilmtofacil@gmail.com");
                mail.Subject = "Fale Conosco de: " + email.getNome();
                mail.Body = email.getMens() + "\n Mensagem de " + email.getEmail();
                smtpClient.Send(mail);
                

            }
            catch (System.Exception erro)
            {
                

            }
            

        }
        #endregion Enviar

    }
}