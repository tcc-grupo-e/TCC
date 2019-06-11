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

        private static string marca, modelo, cor, ano, placa;

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

        

        #endregion MODELO ABERTURA

        #region MODELO ACESSORIOS

        private static string nome_acessorio, estado, comentario;

        public string getNomeAcessorio()
        {
            return nome_acessorio;
        }
        public void setNomeAcessorio(string val)
        {
            nome_acessorio = val;
        }

        public string getEstado()
        {
            return estado;
        }
        public void setEstado(string val)
        {
            estado = val;
        }

        public string getComentario()
        {
            return comentario;
        }
        public void setComentario(string val)
        {
            comentario = val;
        }
        #endregion MODELO ACESSORIOS

        #region MODELO RETIRADA

        private static string endereco, referencia;

        public string getEndereco()
        {
            return endereco;
        }
        public void setEndereco(string val)
        {
            endereco = val;
        }

        public string getReferencia()
        {
            return referencia;
        }
        public void setReferencia(string val)
        {
            referencia = val;
        }

        #endregion MODELO RETIRADA

        #region MODELO DESTINO

        private static string endereco_destino, referencia_destino, ordem;

        public string getEnderecoDestino()
        {
            return endereco_destino;
        }
        public void setEnderecoDestino(string val)
        {
            endereco_destino = val;
        }

        public string getReferenciaDestino()
        {
            return referencia_destino;
        }
        public void setReferenciaDestino(string val)
        {
            referencia_destino = val;
        }

        public string getOrdem()
        {
            return ordem;
        }
        public void setOrdem(string val)
        {
            ordem = val;
        }
        

        #endregion MODELO DESTINO



    }
}