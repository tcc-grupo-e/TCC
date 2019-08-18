using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace prjAuto_Service.Controller
{
   
    public class ControladorAgendar
    {
        ClasseConexao con = new ClasseConexao();
        DataSet ds = new DataSet();


        

        #region exemplo
        //public void inserir(Model.Exemplo exe)
        //{
        //    String sql = "Insert into usu values('" + exe.getLogin() + "','" + exe.getSenha() + "')";
        //    conn = new ClasseConexao();
        //    dt = new DataTable();
        //    dt = conn.executa_sql(sql);
        //}
        #endregion exemplo

        #region Insere Cliente
        public void inserirCliente(Model.Agendar agen)
        {
            
            String sql = "Exec usp_InserirCliente '" + agen.getNome() + "','" + agen.getTelefone() + "','" + agen.getEmail() + "','" + agen.getCpf() + "'";
            con = new ClasseConexao();
            con.executa_sql(sql);
        }
        #endregion Insere Cliente

        #region Insere Abertura
        public void inserirAbertura(Model.Agendar agen)
        {
            ds = new DataSet();
            con = new ClasseConexao();
            ds = con.executa_sql("select ID_Cliente from Cliente where Nome like '"+agen.getNome()+"' and CPF like '"+agen.getCpf()+"'");
            string idCliente = ds.Tables[0].Rows[0]["ID_Cliente"].ToString();
            String sql = "Exec usp_InserirAbertura "+idCliente+",1,'-','-','" + agen.getData() + "','" + agen.getMarca() + "','" + agen.getModelo() + "','" + agen.getCor() + "','" + agen.getAno() + "','" + agen.getPlaca() + "','" + agen.getOrigem() + "','-','" + agen.getHora() + "','-'";
            con = new ClasseConexao();
            con.executa_sql(sql);
        }
        #endregion Insere Abertura

      

        #region Insere Destino
        public void inserirDestino(Model.Agendar agen)
        {
            ds = new DataSet();
            con = new ClasseConexao();
            ds = con.executa_sql("select ID_Cliente from Cliente where Nome like '" + agen.getNome() + "' and CPF like '" + agen.getCpf() + "'");
            string idCliente = ds.Tables[0].Rows[0]["ID_Cliente"].ToString();
            ds = new DataSet();
            con = new ClasseConexao();
            ds = con.executa_sql("select top 1 ID_Chamado from Abertura where ID_Cliente = "+idCliente+" order by ID_Chamado desc");
            string idAbertura = ds.Tables[0].Rows[0]["ID_Chamado"].ToString();
            String sql = "Exec usp_InserirDestino '" + agen.getEnderecoDestino() + "','" + agen.getReferenciaDestino() + "','" + idAbertura + "','" + agen.getOrdem() + "'";
            con = new ClasseConexao();
            con.executa_sql(sql);
        }
        #endregion Insere Destino

    }
}