using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
    public class EmpresaBLL
    {
        public static DataTable TodEmpresa;
        public static DataTable NomEmpresa;
        public static DataTable EmaEmpresa;
        public static DataTable TelEmpresa;
        public static DataTable CnpjEmpresa;
        public static DataTable IEEmpresa;
        public static String Nome;
        public static String Email;
        public static String Telefone;
        public static String CNPJ;
        public static String IE;

        public void setNome(String val)
        {
            Nome = val;
        }
        public String getNome()
        {
            return Nome;
        }

        public void setEmail(String val)
        {
            Email = val;
        }
        public String getEmail()
        {
            return Email;
        }

        public void setTelefone(String val)
        {
            Telefone = val;
        }
        public String getTelefone()
        {
            return Telefone;
        }

        public void setCNPJ(String val)
        {
            CNPJ = val;
        }
        public String getCNPJ()
        {
            return CNPJ;
        }

        public void setIE(String val)
        {
            IE = val;
        }
        public String getIE()
        {
            return IE;
        }

        public void setTodEmpresa(DataTable val)
        {
            TodEmpresa = val;
        }

        public DataTable getTodEmpresa()
        {
            return TodEmpresa;
        }

        public void setNomEmpresa(DataTable val)
        {
            NomEmpresa = val;
        }
        public DataTable getNomEmpresa()
        {
            return NomEmpresa;
        }

        public void setEmaEmpresa(DataTable val)
        {
            EmaEmpresa = val;
        }
        public DataTable getEmaEmpresa()
        {
            return EmaEmpresa;
        }

        public void setTelEmpresa(DataTable val)
        {
            TelEmpresa = val;
        }
        public DataTable getTelEmpresa()
        {
            return TelEmpresa;
        }

        public void setCnpjEmpresa(DataTable val)
        {
            CnpjEmpresa = val;
        }
        public DataTable getCnpjEmpresa()
        {
            return CnpjEmpresa;
        }

        public DataTable pesquisarTodasEmpresas()
        {
            EmpresaDAL cliDAL = new EmpresaDAL();
            TodEmpresa = cliDAL.pesquisarTodasEmpresas();
            return TodEmpresa;
        }

        public DataTable pesquisarEmpresaNome(String nome)
        {
            EmpresaDAL cliDAL = new EmpresaDAL();
            NomEmpresa = cliDAL.pesquisarEmpresaNome(nome);
            return NomEmpresa;
        }

        public DataTable pesquisarEmpresaEmail(String email)
        {
            EmpresaDAL cliDAL = new EmpresaDAL();
            EmaEmpresa = cliDAL.pesquisarEmpresaEmail(email);
            return EmaEmpresa;
        }

        public DataTable pesquisarEmpresaTelefone(String tel)
        {
            EmpresaDAL cliDAL = new EmpresaDAL();
            TelEmpresa = cliDAL.pesquisarEmpresaTelefone(tel);
            return TelEmpresa;
        }

        public DataTable pesquisarEmpresaCnpj(String cpf)
        {
            EmpresaDAL cliDAL = new EmpresaDAL();
            CnpjEmpresa = cliDAL.pesquisarEmpresaCnpj(cpf);
            return CnpjEmpresa;
        }

        public DataTable pesquisarEmpresaIE(String cpf)
        {
            EmpresaDAL cliDAL = new EmpresaDAL();
            IEEmpresa = cliDAL.pesquisarEmpresaIE(cpf);
            return CnpjEmpresa;
        }

        public bool inserirEmpresa(String nome, String email, String tel, String cnpj, String ie)
        {
            EmpresaDAL cliDAL = new EmpresaDAL();

            Nome = nome;
            Email = email;
            Telefone = tel;
            CNPJ = cnpj;
            IE = ie;

            return cliDAL.inserirEmpresa(Nome, Email, Telefone, CNPJ, IE);
        }

        public bool alterarEmpresa(String nome, String email, String tel, String cnpj, String ie, String cod)
        {
            EmpresaDAL cliDAL = new EmpresaDAL();

            Nome = nome;
            Email = email;
            Telefone = tel;
            CNPJ = cnpj;
            IE = ie;

            return cliDAL.alterarEmpresa(Nome, Email, Telefone, CNPJ, IE, cod);
        }

        public bool deletarEmpresa(String cod)
        {
            EmpresaDAL cliDAL = new EmpresaDAL();
            return cliDAL.deletarEmpresa(cod);
        }
    }
}
