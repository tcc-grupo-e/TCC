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
        public DataTable buscarUsuarios(String usuario, String senha)
        {
            cc = new ClasseConexao();
            String sql = "Exec usp_ProcurarLoginFunc '" + usuario + "', '" + senha + "'";
            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch
            { }

            return ds.Tables[0];
        }

        public bool alterar_senha(String senha, int id)
        {
            cc = new ClasseConexao();
            String sql = "Exec usp_AlterarSenhaPC '" + senha + "', " + id;
            try
            {
                cc.executa_sql(sql, false);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool alterar_login(String login, int id)
        {
            cc = new ClasseConexao();
            String sql = "Exec usp_AlterarLoginPC '" + login + "', " + id;
            try
            {
                cc.executa_sql(sql, false);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
