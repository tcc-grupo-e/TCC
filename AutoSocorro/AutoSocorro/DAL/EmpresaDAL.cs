﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class EmpresaDAL
    {
        ClasseConexao cc;
        DataSet ds;
        public DataTable pesquisarTodasEmpresas()
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarTodasEmpresas";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarEmpresaNome(String nome)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarEmpresasNome '" + nome + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarEmpresaEmail(String email)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarEmpresasEmail '" + email + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarEmpresaTelefone(String tel)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarEmpresasTelefone '" + tel + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarEmpresaCnpj(String cnpj)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarEmpresasCNPJ '" + cnpj + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public DataTable pesquisarEmpresaIE(String IE)
        {
            cc = new ClasseConexao();
            ds = new DataSet();

            String sql = "";
            sql = "Exec usp_PesquisarEmpresasIE '" + IE + "'";

            try
            {
                ds = cc.executa_sql(sql, false);
            }
            catch { }

            return ds.Tables[0];
        }

        public bool inserirEmpresa(String nome, String email, String tel, String cnpj, String ie)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_InserirEmpresa '" + nome + "','" + email + "','" + tel + "','-','" + ie + "','" + cnpj + "'";

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

        public bool alterarEmpresa(String nome, String email, String tel, String cnpj, String ie, String cod)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_AlterarEmpresa '" + nome + "','" + tel + "','" + email + "','" + cnpj + "','" + ie + "','" + cod + "'";

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

        public bool deletarEmpresa(String cod)
        {
            cc = new ClasseConexao();

            String sql = "Exec usp_deletarEmpresa '" + cod + "'";

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