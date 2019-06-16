using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class HomeBLL
    {
        public static DataTable Abertos;
        public static DataTable Fechados;

        public void setAbertos(DataTable val)
        {
            Abertos = val;
        }
        public DataTable getAbertos()
        {
            return Abertos;
        }

        public void setFechados(DataTable val)
        {
            Fechados = val;
        }
        public DataTable getFechados()
        {
            return Fechados;
        }

        public DataTable pesquisar_Abertos(String data)
        {
            HomeDAL homeDAL = new HomeDAL();
            Abertos = homeDAL.pesquisar_Abertos(data);
            return Abertos;
        }

        public DataTable pesquisar_Fechados(String data)
        {
            HomeDAL homeDAL = new HomeDAL();
            Fechados = homeDAL.pesquisar_Fechados(data);
            return Fechados;
        }
    }
}
