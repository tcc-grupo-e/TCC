using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjAuto_Service.Model
{
    public class Agendar
    {
        private static string email, nome, telefone;

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
    }
}