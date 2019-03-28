﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class LoginBLL
    {
        private static String Usu;
        private static String Senha;

        public void setUsuario(String val)
        {
            Usu = val;
        }
        public String getUsuario()
        {
            return Usu;
        }

        public void setSenha(String val)
        {
            Senha = val;
        }
        public String getSenha()
        {
            return Senha;
        }

        public bool buscarUsuarios(String usuario, String senha)
        {
            LoginDAL loDAL = new LoginDAL();
            Usu = usuario;
            Senha = senha;

            return loDAL.buscarUsuarios(Usu, Senha);
        } 
    }
}
