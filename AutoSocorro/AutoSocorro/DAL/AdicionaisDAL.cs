using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AdicionaisDAL
    {
        ClasseConexao cc = new ClasseConexao();

        public bool inserirAdicionasi(String nome, String preco)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_InserirAdicionais '" + nome + "','" + preco + "'";

            try
            {
                cc.executa_sql(sql, true);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
