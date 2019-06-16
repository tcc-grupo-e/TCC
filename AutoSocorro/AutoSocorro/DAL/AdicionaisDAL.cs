using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AdicionaisDAL
    {
        ClasseConexao cc;
        DataSet ds;

        public bool inserirAdicional(String nome, String preco)
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

        public bool alterarAdicional(String nome, String preco, String codnome, String codpreco)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_AlterarAdicionais '" + nome + "','" + preco + "','" + codnome + "','" + codpreco + "'";

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

        public bool deletarAdicional(String nome, String preco)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_DeletarAdicionais '" + nome + "','" + preco + "'";

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

        public DataTable pesquisarAdicionais()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "Exec usp_PesquisarTodosAdicionais";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarAdicionaisNome(String nome)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "Exec usp_PesquisarAdicionaisNome '" + nome + "'";
             
            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarAdicionaisPreco(String preco)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "Exec usp_PesquisarAdicionaisPreco '" + preco + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }
    }
}
