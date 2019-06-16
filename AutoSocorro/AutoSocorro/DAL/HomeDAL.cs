using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class HomeDAL
    {
        ClasseConexao cc = new ClasseConexao();
        DataSet ds = new DataSet();

        public DataTable pesquisar_Abertos(String data)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "Exec usp_PesquisarChamadasDataAbertos '" + data + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisar_Fechados(String data)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "Exec usp_PesquisarChamadasDataFechados '" + data + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }
    }
}
