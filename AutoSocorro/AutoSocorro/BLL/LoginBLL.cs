﻿using System;
using System.Collections.Generic;
using System.Data;
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
        private static int NivelAcesso = 0;
        private static int Id = 1;
        public static String PrimCad = "S";
        public static String Nome = "Error!";
        public static DataTable Funcionario;

        public void setPrimCad(String val)
        {
            PrimCad = val;
        }
        public String getPrimCad()
        {
            return PrimCad;
        }

        public void setId(int val)
        {
            Id = val;
        }
        public int getId()
        {
            return Id;
        }

        public void setNome(String val)
        {
            Nome = val;
        }
        public String getNome()
        {
            return Nome;
        }

        public void setNivelAcesso(int val)
        {
            NivelAcesso = val;
        }
        public int getNivelAcesso()
        {
            return NivelAcesso;
        }

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

        public int buscarUsuarios(String usuario, String senha)
        {
            DataTable dt = new DataTable();
            LoginDAL loDAL = new LoginDAL();
            Usu = usuario;
            Senha = senha;
            PrimCad = dt.Rows[0]["Primeiro_Cadastro"] + "";
            Id = Convert.ToInt32(dt.Rows[0]["ID_Funcionario"]);
            dt = loDAL.buscarUsuarios(Usu, Senha);

            if (dt.Rows[0]["T/F"].ToString().Equals("F"))
                return 0;
            else
            {
                Funcionario = dt;
                Nome = dt.Rows[0]["Nome"] + "";

                if (dt.Rows[0]["Cargo"].ToString().Equals("Gerente"))
                {
                    NivelAcesso = 2;
                    return 2;
                }
                else if (dt.Rows[0]["Cargo"].ToString().Equals("Atendente"))
                {
                    NivelAcesso = 1;
                    return 1;
                }
                else
                    return 0;
            }
        } 

        public bool alterar_semha(String senha, int id)
        {
            LoginDAL loDAL = new LoginDAL();
            return loDAL.alterar_semha(senha, id);
        }
    }
}
