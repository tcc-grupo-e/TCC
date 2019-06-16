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


        public DataTable pesquisar_TodasChamadas()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarTodasAsChamadas";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisar_TodasChamadasData(String data)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarTodasAsChamadasData '" + data + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisar_TodasChamadasPlacaCarro(String placa)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarTodasAsChamadasPlacaCarro '" + placa + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarModeloCarro(String modelo)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarTodasAsChamadasModelo '" + modelo + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarMotorista(String mot)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarTodasAsChamadasMotorista '" + mot + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarDestino(String dest)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarTodasAsChamadasDestino '" + dest + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisar_Todos_Clientes()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarClientesEmpresas";

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
            sql = "Exec usp_PesquisarClientesEmpresasNome '" + nome + "'";

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
            sql = "Exec usp_PesquisarIdClientesNomeChamada '" + nome + "'";

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
            sql = "Exec usp_PesquisarFuncionariosMotoristas";

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
            sql = "Exec usp_PesquisarTodosCaminhoesChamada";

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
            sql = "Exec usp_PesquisarTodosCaminhoesChamadaPlaca '" + Placa + "'";

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
            sql = "Exec usp_PesquisarIdCaminhoesChamadaPlaca '" + Placa + "'";

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
