using System;
using System.Collections.Generic;
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
    }
}
