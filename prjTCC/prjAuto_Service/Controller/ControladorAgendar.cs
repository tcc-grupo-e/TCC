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


        public void inserirCliente(Model.Agendar agen)
        {
            String sql = "Exec usp_InserirCli '" + agen.getCpf() + "','" + agen.getEmail() + "','" + agen.getNome() + "','" + agen.getTelefone() + "'";
            con = new ClasseConexao();
            con.executa_sql(sql);
        }
    }
}