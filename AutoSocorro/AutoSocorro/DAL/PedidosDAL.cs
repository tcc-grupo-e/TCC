using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class PedidosDAL
    {
        ClasseConexao cc;
        DataSet ds;

        public DataTable pesquisar_Todos_Clientes()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_procurarTodosClientes";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisar_Clientes_Nome(String nome)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_ProcurarTodos_Clientes '" + nome + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public int pesquisar_Id_Clientes_Nome(String nome)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_ProcurarId_Cliente_Nome '" + nome + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
                return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            }
            catch { }

            return 0;
        }

        public DataTable pesquisar_Todos_Motoristas()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_procurarTodosMotoristas";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisar_Motoristas_Nome(String nome)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_ProcurarTodos_Motoristas '" + nome + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public int pesquisar_Id_Motoristas_Nome(String nome)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_ProcurarId_Motoristas_Nome '" + nome + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
                return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            }
            catch { }

            return 0;
        }

        public DataTable pesquisar_Todos_Caminhoes()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_procurarTodosCaminhoes";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisar_Caminhoes_Placa(String Placa)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_ProcurarTodosCaminhoesPlaca '" + Placa + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public int pesquisar_Id_Caminhoes_Placa(String Placa)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_ProcurarId_Caminhoes_Placa '" + Placa + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
                return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            }
            catch { }

            return 0;
        }
    }
}
