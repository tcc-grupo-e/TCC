using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace prjAuto_Service.Model
{
    public class Agendar
    {
        #region exemplo

        //private static string email, nome, telefone;

        //public string getEmail()
        //{
        //    return email;
        //}
        //public void setEmail(string val)
        //{
        //    email = val;
        //}
        //public string getNome()
        //{
        //    return nome;
        //}
        //public void setNome(string val)
        //{
        //    nome = val;
        //}

        #endregion exemplo

        #region MODELO CLIENTE

        private static string email, nome, telefone, cpf;

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

        public string getTelefone()
        {
            return telefone;
        }
        public void setTelefone(string val)
        {
            nome = val;
        }
        public string getCpf()
        {
            return cpf;
        }
        public void setCpf(string val)
        {
            nome = val;
        }

        #endregion MODELO CLIENTE



    }
}