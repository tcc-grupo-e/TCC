using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class FuncionarioDAL
    {
        ClasseConexao cc;
        DataSet ds;
        public bool inserirFunc(String nome, String email, String rg, String cep, String endereco, String cidade, String estado, String datanasc, String tel, String cnh, String estcivil, String nomeconj, String salario, String cargo, String telconj, String carteira, String login, String senha)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_inserirfunc '" + nome + "','" + cargo + "','" + salario + "','" + email + "','" + rg + "','" + cnh + "','" + carteira + "','" + endereco + "','" + cidade + "','" + cep + "','" + estado + "','" + tel + "','" + datanasc + "','" + estcivil + "','" + nomeconj + "','" + telconj + "','" + login + "','" + senha + "', 'N'";

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

        public DataTable pesquisarFunc(String p)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";

            if (p.Equals("*"))
                sql = "Exec uspProcurarTodosFunc";
            else
                sql = "Exec usp_procurarFunc '" + p + "'";

            try
            {
               ds = cc.executa_sql(sql, false);
            }
            catch{}

            return ds.Tables[0];
        }
    }
}
