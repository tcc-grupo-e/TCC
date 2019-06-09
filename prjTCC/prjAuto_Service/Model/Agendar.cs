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
            telefone = val;
        }
        public string getCpf()
        {
            return cpf;
        }
        public void setCpf(string val)
        {
            cpf = val;
        }

        #endregion MODELO CLIENTE


        #region MODELO ABERTURA

        private static string marca, modelo, cor, ano, placa, retirada;

        public string getMarca()
        {
            return marca;
        }
        public void setMarca(string val)
        {
            marca = val;
        }

        public string getModelo()
        {
            return modelo;
        }
        public void setModelo(string val)
        {
            modelo = val;
        }

        public string getCor()
        {
            return cor;
        }
        public void setCor(string val)
        {
            cor = val;
        }

        public string getAno()
        {
            return ano;
        }
        public void setAno(string val)
        {
            ano = val;
        }

        public string getPlaca()
        {
            return placa;
        }
        public void setPlaca(string val)
        {
            placa = val;
        }

        public string getRetirada()
        {
            return retirada;
        }
        public void setRetirada(string val)
        {
            retirada = val;
        }

        #endregion MODELO ABERTURA



    }
}