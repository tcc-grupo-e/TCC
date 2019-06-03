using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class LoginDAL
    {
        ClasseConexao cc;
        DataSet ds;
        public int buscarUsuarios(String usuario, String senha)
        {
            cc = new ClasseConexao();
            String sql = "Exec uspProcurarLoginFunc '" + usuario + "', '" + senha + "'";
            try
            {
                ds = cc.executa_sql(sql, false);

                if (ds.Tables[0].Rows[0]["T/F"].ToString().Equals("F"))
                    return 0;
                else
                {
                    if (ds.Tables[0].Rows[0]["Cargo"].ToString().Equals("Gerente"))
                        return 2;
                    else if (ds.Tables[0].Rows[0]["Cargo"].ToString().Equals("Atendente"))
                        return 1;
                    else
                        return 3;
                }
            }
            catch
            {
                return 0;
            }
        }
    }
}
