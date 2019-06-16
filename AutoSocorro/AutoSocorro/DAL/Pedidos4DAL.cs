using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Pedidos4DAL
    {
        ClasseConexao cc = new ClasseConexao();
        DataSet ds = new DataSet();
        public bool inserirFechamento(String kmche, String hrche, String hrpar, String hrtrab, String contato, String estado, String acom, int id)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_InserirFechamento '" + kmche + "','" + hrche + "','" + hrpar + "','" + hrtrab + "','" + contato + "','" + estado + "','" + acom + "', " + id;

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

        public bool inserirFuncAber(int id_Mot)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_InserirFuncAber '" + id_Mot + "'";

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
        
        //
        //Inserir Tabela Abertura
        //
        public bool inserirAbertura(int id_Cli, int id_Cam, String nomeAten, String hrs, String retirada, String ano, String kmsaida, String modelo, String marca, String placa, String obs, String data, String cor, String apolice)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_InserirAbertura " + id_Cli + "," + id_Cam + ",'" + nomeAten + "','" + apolice + "','" + data + "','" + marca + "','" + modelo + "','" + cor + "','" + ano + "','" + placa + "','" + retirada + "','" + kmsaida + "','" + hrs + "','" + obs + "'";

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
        //
        //Inserir Tabela Destinos
        //
        public bool inserirDestinos(int ordem, String destino, String referencia, int id_chamado)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_InserirDestino '" + destino + "','" + referencia + "','" + id_chamado + "','" + ordem + "'";

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
        //
        //Consultar Todos os Chamados
        //
        public DataTable pesquisarTodosChamados()
        {
            ds = new DataSet();
            cc = new ClasseConexao();

            String sql = "Exec usp_procurarTodasChamadas";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }
        //
        //Consulatr Chamados pela Placa do Carro
        //
        public DataTable pesquisarPlacaCarro(String placa)
        {
            ds = new DataSet();
            cc = new ClasseConexao();

            String sql = "Exec usp_procurarChamadas_Placa '" + placa + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }
        //
        //Consulatr Chamados pelo Modelo do Carro
        //
        public DataTable pesquisarModeloCarro(String modelo)
        {
            ds = new DataSet();
            cc = new ClasseConexao();

            String sql = "Exec usp_procurarChamadas_Modelo '" + modelo + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }
        //
        //Consulatr Chamados pela nome do Motorista do Caminhão
        //
        public DataTable pesquisarMotorista(String motorista)
        {
            ds = new DataSet();
            cc = new ClasseConexao();

            String sql = "Exec usp_procurarChamadas_Motorista '" + motorista + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }
        //
        //Consulatr Chamados pela Data do chamado
        //
        public DataTable pesquisarDataServico(String data)
        {
            ds = new DataSet();
            cc = new ClasseConexao();

            String sql = "Exec usp_procurarChamadas_Data '" + data + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }
        //
        //Consulatr Chamados pela Placa do Carro
        //
        public DataTable pesquisarDestino(String destino)
        {
            ds = new DataSet();
            cc = new ClasseConexao();

            String sql = "Exec usp_procurarChamadas_Destino '" + destino + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }
        //
        //Consultar Ultimo Id
        //
        public int UltimoId()
        {
            ds = new DataSet();
            cc = new ClasseConexao();

            String sql = "Exec usp_UltimoIdChamadas";

            try
            {
                ds = cc.executa_sql(sql, false);
                return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            }
            catch
            {
                return 0;
            }
        }
    }
}
