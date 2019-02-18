using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

    public class ClasseConexao
    {
        SqlConnection conexao = new SqlConnection();
String machinename = "";
        String senha = "";
        String sqlname = "a";
        String contrabarra = "\\";
        private SqlConnection conectar()
        {
            try
            {
            if (Environment.MachineName == "LAPTOP-DI1O40N1")
            {
                sqlname = "sa";
                machinename = Environment.MachineName + contrabarra.Substring(0, 1) + "SQLEXPRESS";
                senha = "123456";

            }
            else
            {
                sqlname = "aluno"; //MUDAR ISSO AQUI!
                machinename = Environment.MachineName; //MUDAR ISSO AQUI!
				 senha = "etesp";
            }
                String strConexao = "Password="+senha+"; Persist Security Info=True; User ID="+sqlname+ "; Initial Catalog=AutoSocorro; Data Source=" + machinename;
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

        public DataSet executa_sql(String comando_sql)
        {
            try
            {
                SqlDataAdapter adaptador = new SqlDataAdapter(comando_sql, conectar());
                DataSet ds = new DataSet();
                adaptador.Fill(ds);
                return ds;
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
			
            //con = new ClasseConexao();
            ////String nome = txtNome.Text;
            ////String fone = txtFone.Text;
            ////byte[] imagem = ImgToByte(caminhoImagem);
            //SqlCommand cmd = new SqlCommand("INSERT INTO contatosIMG(nome,fone,img) VALUES(@nome,@fone,@img)");
            //cmd.Parameters.Add("@nome", SqlDbType.NVarChar, 50).Value = "Dede";
            //cmd.Parameters.Add("@fone", SqlDbType.NVarChar, 50).Value = "40028922";
            ////cmd.Parameters.Add("@img", SqlDbType.VarBinary, imagem.Length).Value = imagem;
            //int x = con.executa_IncAltExcParametros(cmd); //retorna o número de linhas afetadas no DB
            //if(x > 0)
            //{
            //    btnAdicionarImagem.Visible = false;
            //    btnSalvar.Visible = false;
            //    atualizar_dados();
            //    MessageBox.Show("Registro Salvo");
            //}
            //else
            //{
            //    MessageBox.Show("Falha ao inserir registro");
            //}			
			
            int retorno = 0;
            try
            {
                comando.Connection = conectar();  //adiciona a conexão ao SQLCommand
                retorno = comando.ExecuteNonQuery(); //devolve o número de linhas afetadas no banco
            }
            catch (Exception){}
            desconectar();
            return retorno;
        }

        public DataTable executa_Procedure(String x)
        {
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd1 = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            try
            {
                conectar();
                cmd = new SqlCommand("minha_procedure", conectar()); //não digitar Exec, não passar os parâmetros
                cmd.Parameters.Add(new SqlParameter("@par1", x));
                cmd1 = new SqlCommand("minha_procedure", conectar()); //não digitar Exec, não passar os parâmetros
                cmd1.Parameters.Add(new SqlParameter("@par1", x));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.InsertCommand = cmd1;
                da.Fill(dt);
            }
            catch (Exception){}
            return dt;
        }


        public bool manutencao(String comando_sql) //teste
        {
            try
            {
                SqlCommand comando = new SqlCommand();
                comando.CommandText = comando_sql;
                comando.Connection = conectar();
                conexao.Open();
                comando.ExecuteScalar();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                desconectar();
            }
        }
    }
