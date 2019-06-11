﻿using System;
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
            String sql = "Exec usp_InserirCli '" + agen.getCpf() + "','" + agen.getEmail() + "','" + agen.getNome() + "','" + agen.getTelefone() + "'";
            con = new ClasseConexao();
            con.executa_sql(sql);
        }
        #endregion Insere Cliente

        #region Insere Abertura
        public void inserirAbertura(Model.Agendar agen)
        {
            String sql = "Exec usp_InserirAber '" + agen.getAno() + "','" + agen.getCor() + "','" + agen.getModelo() + "','" + agen.getMarca() + "','" + agen.getPlaca() + "'";
            con = new ClasseConexao();
            con.executa_sql(sql);
        }
        #endregion Insere Abertura

        #region Insere Acessorio
        public void inserirAcessorio(Model.Agendar agen)
        {
            String sql = "Exec usp_InserirAce '" + agen.getNomeAcessorio() + "','" + agen.getEstado() + "','" + agen.getComentario() + "'";
            con = new ClasseConexao();
            con.executa_sql(sql);
        }
        #endregion Insere Acessorio

        #region Insere Retirada
        public void inserirRetirada(Model.Agendar agen)
        {
            String sql = "Exec usp_InserirRet '" + agen.getReferencia() + "','" + agen.getEndereco() + "'";
            con = new ClasseConexao();
            con.executa_sql(sql);
        }
        #endregion Insere Retirada


    }
}