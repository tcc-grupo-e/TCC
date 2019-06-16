using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ClienteDAL
    {
        ClasseConexao cc;
        DataSet ds;

        public DataTable pesquisarCli()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarTodosClientes";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarCliNome(String nome)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarClientesNome '" + nome + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarCliEmail(String email)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarClientesEmail '" + email + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarCliTelefone(String tel)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarClientesTelefone '" + tel + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarCliCPF(String cpf)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarClientesCPF '" + cpf + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public bool inserirCli(String nome, String email, String tel, String cpf)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_InserirCliente '" + nome + "','" + tel + "','" + email + "','" + cpf + "'";

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

        public bool alterarCli(String nome, String email, String tel, String cpf, String cod)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_AlterarCliente '" + nome + "','" + tel + "','" + email + "','" + cpf + "','" + cod + "'";

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

        public bool deletarCli(String cod)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_DeletarCliente '" + cod + "'";

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
