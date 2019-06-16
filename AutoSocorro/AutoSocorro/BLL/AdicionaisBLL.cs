using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class AdicionaisBLL
    {
        public static String Nome;
        public static String Preco;
        public static DataTable TodosAdicionais;
        public static DataTable NomeAdicionais;
        public static DataTable PrecoAdicionais;

        public void setNomeAdicionais(DataTable val)
        {
            NomeAdicionais = val;
        }
        public DataTable getNomeAdicionais()
        {
            return NomeAdicionais;
        }

        public void setTodosAdicionais(DataTable val)
        {
            TodosAdicionais = val;
        }
        public DataTable getTodosAdicionais()
        {
            return TodosAdicionais;
        }

        public void setNome(String val)
        {
            Nome = val;
        }
        public String getNome()
        {
            return Nome;
        }

        public void setPreco(String val)
        {
            Preco = val;
        }
        public String getPreco()
        {
            return Preco;
        }

        public bool inserirAdicional(String nome, String preco)
        {
            Nome = nome;
            Preco = preco;
            AdicionaisDAL adDAL = new AdicionaisDAL();
            return adDAL.inserirAdicional(Nome, Preco);
        }

        public bool alterarAdicional(String nome, String preco, String codnome, String codpreco)
        {
            Nome = nome;
            Preco = preco;
            AdicionaisDAL adDAL = new AdicionaisDAL();
            return adDAL.alterarAdicional(Nome, Preco, codnome, codpreco);
        }

        public bool deletarAdicional(String nome, String preco)
        {
            Nome = nome;
            Preco = preco;
            AdicionaisDAL adDAL = new AdicionaisDAL();
            return adDAL.deletarAdicional(Nome, Preco);
        }

        public DataTable pesquisarAdicionais()
        {
            AdicionaisDAL adDAL = new AdicionaisDAL();
            TodosAdicionais = adDAL.pesquisarAdicionais();
            return TodosAdicionais;
        }

        public DataTable pesquisarAdicionaisNome(String nome)
        {
            AdicionaisDAL adDAL = new AdicionaisDAL();
            NomeAdicionais = adDAL.pesquisarAdicionaisNome(nome);
            return NomeAdicionais;
        }

        public DataTable pesquisarAdicionaisPreco(String preco)
        {
            AdicionaisDAL adDAL = new AdicionaisDAL();
            PrecoAdicionais = adDAL.pesquisarAdicionaisPreco(preco);
            return PrecoAdicionais;
        }
    }

}
