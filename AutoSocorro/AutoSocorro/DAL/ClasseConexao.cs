using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public class ClasseConexao
{
    SqlConnection conexao = new SqlConnection();

    String ID = "sa";
    String Password = "etesp";

    private SqlConnection conectar()
     {
        if (Environment.MachineName.Contains("23T"))
        {
            ID = "sa";
            Password = "etesp";
        }
        else if (Environment.MachineName.Contains("BIBLIO"))
        {
            ID = "aluno";
            Password = "etesp";
        }
        else if (Environment.MachineName.Contains("JELUBO"))
        {
            ID = "sa";
            Password = "123456";
        }

        try
        {
            String strConexao = "Password=" + Password + "; Persist Security Info = false; User ID=" + ID + "; Initial Catalog =AutoSocorro; Data Source=" + Environment.MachineName /*+ " \\SQLEXPRESS"*/;
            conexao.ConnectionString = strConexao;
            conexao.Open();
            return conexao;
        }
        catch (Exception)
        {
            desconectar();
            return null;
        }
    }

    public void desconectar()
    {
        try
        {
            if ((conexao.State == ConnectionState.Open))
            {
                conexao.Close();
                conexao.Dispose();
                conexao = null;
            }
        }
        catch (Exception) { }
    }

    public DataSet executa_sql(String comando_sql, bool Ins)
    {
        try
        {
            SqlDataAdapter adaptador = new SqlDataAdapter(comando_sql, conectar());
            DataSet ds = new DataSet();
            adaptador.Fill(ds);
            

            if (!Ins)
                return ds;
            else
                return null;
        }
        catch (Exception)
        {
            return null;
        }
        finally
        {
            desconectar();
        }
    }

    public int executa_IncAltExcParametros(SqlCommand comando) //incluir, alterar, excluir
    {
        int retorno = 0;
        try
        {
            comando.Connection = conectar();  //adiciona a conexão ao SQLCommand
            retorno = comando.ExecuteNonQuery(); //devolve o número de linhas afetadas no banco
        }
        catch (Exception) { }
        desconectar();
        return retorno;
    }

    public DataTable executa_Procedure(String x)
    {
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        try
        {
            conectar();
            cmd = new SqlCommand("minha_procedure", conectar()); //não digitar Exec, não passar os parâmetros
            cmd.Parameters.Add(new SqlParameter("@par1", x));
            cmd.CommandType = CommandType.StoredProcedure;
            da.SelectCommand = cmd;
            da.Fill(dt);
        }
        catch (Exception) { }
        return dt;
    }


    public int manutencao(String comando_sql) 
    {
        int numLinhas = 0;
        try
        {
            SqlCommand comando = new SqlCommand();
            comando.CommandText = comando_sql;
            comando.Connection = conectar();
            conexao.Open();
            numLinhas = comando.ExecuteNonQuery();
            return numLinhas;
        }
        catch (Exception)
        {
            return numLinhas;
        }
        finally
        {
            desconectar();
        }
    }
}
