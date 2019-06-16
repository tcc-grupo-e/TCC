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

            String sql = "Exec usp_InserirFuncionario '" + nome + "','" + cargo + "','" + salario + "','" + email + "','" + rg + "','" + cnh + "','" + carteira + "','" + endereco + "','" + cidade + "','" + cep + "','" + estado + "','" + tel + "','" + datanasc + "','" + estcivil + "','" + nomeconj + "','" + telconj + "','" + login + "','" + senha + "', 'N'";

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

        public bool alterarFunc(String nome, String email, String rg, String cep, String endereco, String cidade, String estado, String datanasc, String tel, String cnh, String estcivil, String nomeconj, String salario, String cargo, String telconj, String carteira, String codrg)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_AlterarFuncionario  '" + nome + "','" + cargo + "','" + salario + "','" + email + "','" + rg + "','" + cnh + "','" + carteira + "','" + endereco + "','" + cidade + "','" + cep + "','" + estado + "','" + tel + "','" + datanasc + "','" + estcivil + "','" + nomeconj + "','" + telconj + "','" + codrg + "'";

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
                sql = "Exec usp_PesquisarTodosFuncionarios";
            else
                sql = "Exec usp_PesquisarFuncionariosNome '" + p + "'";

            try
            {
               ds = cc.executa_sql(sql, false);
            }
            catch{}

            return ds.Tables[0];
        }

        public DataTable pesquisarTodosFunc()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";

            sql = "Exec usp_PesquisarTodosFuncionariosB";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public bool deletarFunc(String codrg)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_DeletarFuncionario '" + codrg + "'";

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
