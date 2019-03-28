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
        public bool buscarUsuarios(String usuario, String senha)
        {
            cc = new ClasseConexao();

            String sql = "select * from Funcionario where login_Funcionario = '" + usuario + "' and senha_Funcionario = '" + senha + "'";

            try
            {
                ds = cc.executa_sql(sql, false);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

            catch
            {
                return false;
            }
        }
    }
}
