using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjAuto_Service.Model
{
    public class Email
    {
        #region Modelo Dados do Email

        private static string email, nome, mens;

        public string getEmail()
        {
            return email;
        }
        public void setEmail(string val)
        {
            email = val;
        }
        public string getNome()
        {
            return nome;
        }
        public void setNome(string val)
        {
            nome = val;
        }

        public string getMens()
        {
            return mens;
        }
        public void setMens(string val)
        {
           mens = val;
        }
        #endregion Modelo Dados do Email
    }
}